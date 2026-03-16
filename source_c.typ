// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Иван Лебедев",
  title: "Иван Лебедев - CV",
  footer: context { [#emph[Иван Лебедев -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Последнее обновление Мар 2026] ],
  locale-catalog-language: "ru",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 1.5cm,
  page-bottom-margin: 1.5cm,
  page-left-margin: 1.5cm,
  page-right-margin: 1.5cm,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified-with-no-hyphenation",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: true,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 3,
    day: 16,
  ),
)


= Иван Лебедев

  #headline([C\/C++ Developer | System Software Engineer])

#connections(
  [#connection-with-icon("location-dot")[Санкт-Петербург]],
  [#link("mailto:vanyalebedev45@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[vanyalebedev45\@gmail.com]]],
  [#link("tel:+7-910-856-43-23", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[8 (910) 856-43-23]]],
  [#link("https://t.me/n1xs1", icon: false, if-underline: false, if-color: false)[#connection-with-icon("telegram")[n1xs1]]],
  [#link("https://github.com/n1xsi", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[n1xsi]]],
)


== О себе

Инженер-программист на C\/C++, увлечённый разработкой со школьных лет.

В университете увлёкся архитектурой ЭВМ, Linux и системной разработкой.

Также активно увлекаюсь Python (имею коммерческий опыт), что очень помогает мне в написании скриптов и автоматизации рутины.

== Образование

#education-entry(
  [
    #strong[ГУАП], Информатика и вычислительная техника (09.03.01)

    - Участие в учебных практиках с разработкой внутренних инструментов для автоматизации.

  ],
  [
    Санкт-Петербург

    Сен 2023 – Июн 2027

  ],
  degree-column: [
    #strong[Бак.]
  ],
  main-column-second-row: [
  ],
)

== Опыт работы

#regular-entry(
  [
    #strong[FutureToday], Intern Developer (Python \/ Backend)

    - Разрабатывал и оптимизировал функционал приложения для поиска стажировок с использованием нейросетевой фильтрации.

  ],
  [
    Санкт-Петербург

    Фев 2025 – Апр 2025

  ],
  main-column-second-row: [
    - Проводил рефакторинг legacy-кода и адаптацию алгоритмов обработки данных из Excel-таблиц.

    - Выявлял и устранял баги в модулях сбора данных из социальных сетей.

  ],
)

== Проекты

#regular-entry(
  [
    #strong[#link("https://github.com/n1xsi/3d-polyhedron-rasterizer")[3D Polyhedron Rasterizer] | C++, WinAPI, GDI+]

  ],
  [
    Ноя 2025 – Дек 2025

  ],
  main-column-second-row: [
    #summary[Реализация 3D-движка с полным циклом рендеринга без использования готовых 3D-библиотек (OpenGL\/DirectX).]

    - Написал математику для аффинных преобразований (перемещение, вращение, масштабирование).

    - Реализовал удаление невидимых граней (Back-face culling) через векторы нормалей.

    - С нуля реализовал алгоритм закраски полигонов (Scan-line rasterization), используя GDI+ исключительно для вывода 2D-примитивов на экран.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/n1xsi/rle-compressor")[RLE Compressor] | C, File I\/O]

  ],
  [
    Мар 2025 – Мар 2025

  ],
  main-column-second-row: [
    #summary[Кроссплатформенная консольная утилита для сжатия файлов и директорий.]

    - Реализовал алгоритм Run-Length Encoding (RLE) для сжатия данных с низкой энтропией.

    - Спроектировал собственный бинарный формат контейнера для запаковки целых директорий (запись метаданных и полезной нагрузки).

    - Оптимизировал потоковое чтение\/запись байтов и ручное выделение памяти.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/n1xsi/assembly-x64-labs")[x86-64 Assembly Labs] | GAS ASM, Linux, Makefile]

  ],
  [
    Окт 2025 – Ноя 2025

  ],
  main-column-second-row: [
    #summary[Сборник низкоуровневых программ для демонстрации работы с процессором.]

    - Реализовал сложные вычисления (включая сопроцессор FPU), поразрядную обработку данных и косвенную адресацию.

    - Интегрировал системные вызовы Linux и функции библиотеки `libc`.

  ],
)

== Технический стек

#strong[Языки программирования:] C++, C, Gas Asm x64 (nasm), Python

#strong[Навыки & Инструменты:] IDA x64, Linux (WSL\/Debian), Bash, Git, Docker, Make, CMake, Neovim

#strong[Доп. навыки:] Управление памятью, WinAPI, GDI+, Алгоритмы и структуры данных, ООП, Отладка (GDB), Linker

== Дополнительная информация

- Soft Skills — Был капитаном киберспортивной команды (LAN-турниры), отвечал за стратегию, коммуникацию, поддержку и управление командой в стрессовых ситуациях. Участвовал в вузовских хакатонах (разработка игровых прототипов на C\# и Unity).

- Hard Skills — Призёр школьных олимпиад по программированию (областной уровень). Регулярно решаю алгоритмические задачи на #link("https://www.codewars.com/users/nixsi")[CodeWars], вхожу в топ-12\% мирового рейтинга (Rank: 4 kyu).
