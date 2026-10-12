#!/usr/bin/env python3

import subprocess
import shutil
import sys
import re
from pathlib import Path

PDF = Path(__file__).parent / "rendercv_output" / "Иван_Лебедев_CV.pdf"

KEYWORDS = [
    "Python-разработчик",
    "self-hosted",
    "промпт-инжиниринг",
    "RAG-пайплайн",
    "FastAPI",
    "SQLAlchemy",
    "PostgreSQL",
    "Qdrant",
    "pgvector",
    "vLLM",
    "Triton",
    "asyncio",
    "Docker",
    "CI/CD",
    "PyTorch",
    "Kubernetes",
]

CONTACTS = ["@", "+7", "t.me/", "github.com/"]

MAX_PAGES = 1


def extract_text(pdf: Path) -> str:
    if not shutil.which("pdftotext"):
        sys.exit("pdftotext не найден — установи poppler-utils")
    out = subprocess.run(
        ["pdftotext", "-enc", "UTF-8", str(pdf), "-"],
        capture_output=True,
        check=True,
    )
    return out.stdout.decode("utf-8", errors="replace")


def page_count(text: str) -> int:
    return len([p for p in text.split("\f") if p.strip()])


def main() -> int:
    if not PDF.exists():
        sys.exit(f"не найден {PDF} — сначала выполни: rendercv render ./source.yaml")

    text = extract_text(PDF)
    flat = re.sub(r"\s+", " ", text)
    failures = []

    for kw in KEYWORDS:
        if kw in flat:
            continue
        broken = kw.replace("-", "")
        hint = f" (найдено как '{broken}' - разорвано переносом)" if broken in flat.replace("-", "") else ""
        failures.append(f"ключевик «{kw}» отсутствует в текстовом слое{hint}")

    for c in CONTACTS:
        if c not in flat:
            failures.append(f"контакт '{c}' не виден в текстовом слое")

    pages = page_count(text)
    if pages > MAX_PAGES:
        failures.append(f"резюме занимает {pages} стр., допустимо {MAX_PAGES}")

    if failures:
        print("FAIL")
        for f in failures:
            print(f"  - {f}")
        return 1

    print(f"OK: {pages} стр., все ключевики и контакты читаются в текстовом слое")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
