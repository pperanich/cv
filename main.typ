
// Typst resume generated for Preston Peranich (expanded edition)
// Template: @preview/modern-cv:0.9.0
// Compile:
//   typst init @preview/modern-cv:0.9.0
//   typst compile preston-peranich-resume-expanded.typ
#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Preston", lastname: "Peranich", email: "pperanich@gmail.com", linkedin: "preston-peranich-74166812a", github: "pperanich", scholar: "WDM22cwAAAAJ", positions: ("Research Engineer", "Real-Time Systems", "Neural Interfaces",), custom: (),
  ), keywords: (
    "Software", "Embedded", "Real-Time", "GPU", "Edge", "Neural Interfaces", "Optics", "Holography", "Additive Manufacturing", "Rust", "Python", "C++",
  ), description: "Resume of Preston Peranich", profile-picture: image("profile.jpg"), date: datetime.today().display(), language: "en", colored-headers: true, show-footer: false, show-address-icon: false, paper-size: "us-letter",
)

= Summary

Research engineer with *6+ years* building latency-critical sensing and control
systems at Johns Hopkins APL. I work full-stack—from embedded firmware and edge
deployments to GPU-accelerated processing to researcher-facing
visualizations—with emphasis on reproducible research infrastructure, modular
architectures, and rapid prototyping that enables experimental validation.
Maintainer of ezmsg (adopted by multiple research groups) and sole firmware
author of DC Mini (open hardware + Rust firmware for a 16-channel EEG wearable),
pairing algorithm development and scientific computing with hands-on hardware
integration for closed-loop organoid experiments, noninvasive & intracortical
neural sensing, and real-time additive manufacturing quality control.

= Experience

#resume-entry(
  title: "Research Engineer", location: "Laurel, MD", date: "June 2021 — Present", description: "Johns Hopkins University Applied Physics Laboratory — Neural Interfaces (REDD)",
)

#resume-item[
  *Neural Interfaces — noninvasive & intracortical*
  - Extended a real-time optical sensing stack for high-speed acquisition,
    timing/synchronization , and comprehensive GUI for hardware control, parameter
    tuning, and real-time interactive visualization essential for system alignment
    and data collection. Delivered analysis/tooling that informed next-phase
    proposals.
]

#resume-item[
  *Organoid Intelligence — closed loop, reinforcement learning*
  - Lead developer for closed-loop organoid experiments: MEA control/data bindings,
    spike-to-action units, and latency-minimized experiment loops; progressed from
    proof-of-concept to first closed-loop runs and systematic parameter sweeps.
  - Built reusable Python components for online RL and offline analysis, aligning
    collection control, state, and logging for reproducible experiments.
]

#resume-item[
  *Additive Manufacturing — real-time control GUI & sensor fusion*
  - Architected comprehensive GUI for laser AM control: real-time melt pool
    monitoring, temperature profile analysis, and process quality assessment.
    Integrated ingest → correction → binning → GPU visualization pipeline with
    interactive controls for processing parameters and hardware settings.
]

#resume-item[
  *Edge & platform engineering — Jetson deployments*
  - Authored robust Jetson 5→6 provisioning: CUDA toolkits, Python envs, Docker
    images, and ROS integration, enabling reproducible, portable deployments for
    AR/robotics and real-time sensing pipelines.
]

#resume-item[
  *Optical instrumentation — OCT & holography*
  - Developed full-featured GUIs for multi-axis instrument control and
    phase-shifting (e.g., 4-phase piezo) in full-field Optical Coherence Tomography
    (OCT)/holography systems. Integrated high-speed camera controls with real-time
    interactive visualization and hardware parameter adjustment, significantly
    shortening alignment cycles and enabling rapid experimental iteration.
]

#resume-item[
  *Smart operating room — sensor fusion & edge compute*
  - Software lead for next-generation OR capture system: deployed NVIDIA Jetson edge
    devices running CV algorithms (object detection, pose tracking), multi-camera
    registration with stereo cameras, ultrawideband trackers, and environmental
    sensors. Expanded team to 6 engineers and met all critical milestones leading to
    contract extensions.
]

#resume-entry(
  title: "College Intern", location: "Laurel, MD", date: "May 2019 — May 2021", description: "Johns Hopkins University Applied Physics Laboratory — RF Engineering (Space Sector)",
)

#resume-item[
  - Co‑created a spacecraft avionics testbed on an embedded Xilinx SoC running
    RTEMS.
  - Built custom interfaces for the COSMOS ground system and cross‑platform tooling
    to exercise test equipment and devices under test.
  - Authored a testing environment and documentation adopted by external groups for
    requirement verification.
]

#pagebreak()

#resume-entry(
  title: "Graduate Research Assistant", location: "Mississippi State, MS", date: "Aug 2019 — May 2021", description: "Mississippi State University",
)

#resume-item[
  - Designed a P‑band receiver to measure direct/reflected Signals of Opportunity
    for soil‑moisture inversion.
  - Advanced a wearable sensor device to capture movement of the foot/ankle complex
    (soft robotic sensors, 3D motion capture).
]

#resume-entry(
  title: "Undergraduate Research Assistant", location: "Starkville, MS", date: "Aug 2016 — May 2019", description: "Center for Advanced Vehicular Systems, Mississippi State University",
)

#resume-item[
  - Prototyped a real‑time wearable device with wireless sensors; authored a GUI for
    live graphing.
  - Built a platform for a high‑power three‑phase voltage‑source inverter with
    grid‑tie capability; co‑developed a robust switching algorithm and a TI‑MCU GUI.
]

#resume-entry(
  title: "System Test Intern", location: "Boulder, CO", date: "May 2018 — Aug 2018", description: "FreeWave Technologies",
)

#resume-item[
  - Developed and executed network/system tests for radio products; automated tests
    with Python and unit tests.
  - Contributed to CI pipelines for faster firmware feedback; visualized test data
    with Splunk.
]

#resume-entry(
  title: "Avionics College Intern (G500/G600)", location: "Savannah, GA", date: "May 2017 — Aug 2017", description: "Gulfstream Aerospace",
)

#resume-item[
  - Performed Integrated Test Procedures and resolved problem reports; delivered
    compliance reports and system documentation.
  - Authored Kinds of Operations reports; coordinated with engineers and test pilots
    for regulatory compliance.
]

= Projects (Open Source)

#resume-entry(
  title: "ezmsg", location: "", date: "", description: "Core contributor · Pure-Python, SHM-backed, multi-process DAG framework for real-time pipelines",
)

#resume-item[
  - Implemented high-throughput shared-memory transport, reusable processing blocks,
    and operator-facing visualization modules adopted across optics and neuro
    projects.
  - Ecosystem: #link("https://github.com/ezmsg-org")[ezmsg-org]
]

#resume-entry(
  title: "DC Mini — 16-channel EEG wearable (Rust firmware + open hardware)", location: "", date: "", description: "Sole firmware developer · Modular BSP / boot manager / application crates",
)

#resume-item[
  - Hardware: ADS1299 (4–16 ch, DC-coupled), nRF52840 BLE, USB isolation, ICM-45605
    IMU, APDS-9253 ALS, PDM mic, nPM1300 PMIC, haptics, NFC, microSD.
  - Firmware: three-crate architecture (BSP drivers, boot manager with fallback,
    application); Nix-based reproducible toolchain; USB/SD storage, BLE streaming,
    watchdog safety.
  - Repos: #link("https://github.com/dcmini-org/dcmini-fw")[dcmini-fw],
    #link("https://github.com/dcmini-org/dcmini-hw")[dcmini-hw]
]

= Skills

#resume-skill-item("Programming Languages", ("Python", "Rust", "C++", "C"))

#resume-skill-item("Embedded", ("embassy-rs", "nRF52", "SPI/I²C/UART", "BLE"))

#resume-skill-item(
  "Tools & Platforms", ("Linux", "Git", "Nix", "GitHub Actions", "CI/CD", "Docker", "ROS",),
)

= Education

#resume-entry(
  title: "Mississippi State University", location: "Starkville, MS", date: "2019 — 2021", description: "M.S., Electrical & Computer Engineering",
)

#resume-entry(
  title: "Mississippi State University", location: "Starkville, MS", date: "2015 — 2019", description: "B.S., Electrical & Electronics Engineering",
)

= Honors & Awards

#resume-item[
  - MSSGC NASA Fellow (2019–2020)
  - MSSGC NASA Fellow (2020–2021)
]

#pagebreak()

= Selected Highlights

#resume-entry(
  title: "Noninvasive Brain-Computer Interface Breakthrough", location: "", date: "Nov 2024", description: "APL News",
)

#resume-item[
  - Demonstrated nanometer-scale neural tissue deformations via digital holographic
    imaging; established new noninvasive BCI signal modality extending beyond
    current surgical implants.
  - #link(
      "https://www.jhuapl.edu/news/news-releases/241114-noninvasive-brain-computer-interface",
    )[*Full article*]
]

#resume-entry(
  title: "POSITRONIC Platform for Organoid TBI Research", location: "", date: "July 2024", description: "APL News",
)

#resume-item[
  - Integrated brain organoids with pressure-generation and noninvasive optical
    imaging to study repeated low-level blast exposures; enables military mTBI
    research.
  - #link(
      "https://www.jhuapl.edu/news/news-releases/250703-organoid-platform-traumatic-brain-injury-research",
    )[*Full article*]
]

#resume-entry(
  title: "Real-Time Additive Manufacturing Flaw Detection", location: "", date: "May 2024", description: "APL News",
)

#resume-item[
  - Developed monitoring system detecting keyhole flaws in 952 nanoseconds via
    thermal disruption measurement; prevents vapor bubble formation in cooling
    metal.
  - #link(
      "https://www.jhuapl.edu/news/news-releases/240509-catching-additive-manufacturing-flaws-nanoseconds-to-spare",
    )[*Full article*]
]

#resume-entry(
  title: "Navy-APL Additive Manufacturing Collaboration", location: "", date: "Mar 2024", description: "APL News",
)

#resume-item[
  - Providing in situ monitoring technologies and standards for real-time quality
    control; accelerating submarine production and fleet sustainment.
  - #link(
      "https://www.jhuapl.edu/news/news-releases/240319b-apl-navy-chart-next-steps-for-3d-printing-advancements",
    )[*Full article*]
]

#resume-entry(
  title: "SURPASS Organoid Intelligence Initiative", location: "", date: "Ongoing", description: "JHU SURPASS",
)

#resume-item[
  - Pioneering integration of human brain organoids with AI/robotics; advancing
    biological intelligence understanding, disease modeling, and biocomputing
    applications.
  - #link("https://surpass.jhu.edu/awards/")[*Program page*]
]

= Publications

#resume-entry(
  title: "StARS DCM: A Sleep Stage-Decoding Forehead EEG Patch for Real-time Modulation of Sleep Physiology", location: "", date: "2025", description: "arXiv preprint",
)

#resume-item[
  - Presents the DC Mini platform for sleep stage decoding; demonstrates real-time
    sleep physiology monitoring using forehead-mounted EEG patch.
  - Link: #link("https://arxiv.org/abs/2506.03442")[arXiv:2506.03442]
]

#resume-entry(
  title: "Recent Results from P-Band Signals of Opportunity Receiver Deployed on a Multi-Copter UAS Platform", location: "", date: "2022", description: "IEEE IGARSS (Kuala Lumpur) — Session TH5.V17",
)

#resume-item[
  - UAS-mounted P-band SoOp receiver results toward soil/vegetation sensing;
    discusses instrument design iterations and field integration.
  - Contribution: system integration and UAS instrumentation.
  - Link: #link("https://www.igarss2022.org/view_paper.php?PaperNum=4294")[IGARSS 2022]
]

#resume-entry(
  title: "Closing the Wearable Gap — Part IX: Validation of an Improved Ankle Motion Capture Wearable", location: "", date: "2021", description: "IEEE Access",
)

#resume-item[
  - Validation of improved ankle motion capture using soft robotic sensors;
    demonstrates enhanced accuracy in foot-ankle kinematics measurement.
  - DOI: #link(
      "https://doi.org/10.1109/ACCESS.2021.3104032",
    )[10.1109/ACCESS.2021.3104032]
]

#resume-entry(
  title: "A Low-Cost Research Platform for Brain-Computer-Interface Applications in Mixed Reality", location: "", date: "2021", description: "IEEE NER — 10th Int'l Conference on Neural Engineering",
)

#resume-item[
  - BCI platform for mixed reality applications; low-cost approach to neural
    interface development for AR/VR environments.
  - DOI: #link(
      "https://doi.org/10.1109/NER49283.2021.9441381",
    )[10.1109/NER49283.2021.9441381]
]

#resume-entry(
  title: "Evaluating Performance of Extended Kalman Filter Based Adaptive Cruise Control Using PID Controller", location: "", date: "2021", description: "Proc. SPIE 11748 — Autonomous Systems: Sensors, Processing, and Security for Vehicles",
)

#resume-item[
  - Comparative analysis of EKF-based adaptive cruise control with PID controller;
    performance evaluation for autonomous vehicle applications.
  - DOI: #link("https://doi.org/10.1117/12.2585882")[10.1117/12.2585882]
]

#resume-entry(
  title: "Implementation of UAS-Based P-Band Signals of Opportunity Receiver for Root-Zone Soil Moisture Retrieval", location: "", date: "2021", description: "Master's Thesis — Mississippi State University",
)

#resume-item[
  - UAS P-band SoOp receiver for root-zone soil moisture inference; RF front-end,
    synchronization, calibration, flight testing.
  - Link: #link("https://scholarsjunction.msstate.edu/td/5134/")[MSU repository]
]

#resume-entry(
  title: "A UAS-based RF Testbed for Water Utilization in Agroecosystems", location: "", date: "2021", description: "Proc. SPIE 11747 — Autonomous Air & Ground Sensing Systems for Agricultural Optimization and Phenotyping VI",
)

#resume-item[
  - UAS RF testbed combining radiometry, scatterometry, wideband GPR, and SoOp for
    soil moisture/vegetation traits at different depths.
  - Role: testbed development and sensor integration.
  - DOI: #link("https://doi.org/10.1117/12.2591895")[10.1117/12.2591895]
]

#resume-entry(
  title: "Low-Voltage Capacitive Measurement Methodology for Dielectric Elastomers", location: "", date: "2021", description: "Proc. SPIE 11757 — Smart Biomedical and Physiological Sensor Technology XVIII",
)

#resume-item[
  - Phase-based (Goertzel) capacitance measurement on a low-cost MCU for dielectric
    elastomer sensing in wearables.
  - Role: embedded/measurement prototyping; algorithm integration.
  - DOI: #link("https://doi.org/10.1117/12.2587797")[10.1117/12.2587797]
]

#resume-entry(
  title: "Deterioration of Textile vs. Electronic Components over Time in Athletic Wearable Devices", location: "", date: "2021", description: "Proc. SPIE 11757 — Smart Biomedical and Physiological Sensor Technology XVIII",
)

#resume-item[
  - Longitudinal durability comparison of garment vs. embedded electronics; guidance
    for reliability-aware wearable design/maintenance.
  - Link: #link("https://par.nsf.gov/servlets/purl/10288411")[NSF Public Access]
]

#resume-entry(
  title: "Closing the Wearable Gap — Part VII: A Retrospective of Stretch Sensor Tool Kit Development for Benchmark Testing", location: "", date: "2020", description: "Electronics (MDPI) — Feature/Review",
)

#resume-item[
  - Retrospective on stretch-sensor toolkit development (hardware, fixtures, and
    protocols) to standardize benchmark testing for soft robotic sensors.
  - DOI: #link(
      "https://doi.org/10.3390/electronics9091457",
    )[10.3390/electronics9091457]
]

#resume-entry(
  title: "Closing the Wearable Gap — Part VI: Human Gait Recognition Using Deep Learning Methodologies", location: "", date: "2020", description: "Electronics (MDPI)",
)

#resume-item[
  - Foot-ankle kinematics with soft robotic sensors (SRS); compares linear, ANN, and
    LSTM models for gait recognition; ANN lowest average RMSE.
  - DOI: #link(
      "https://doi.org/10.3390/electronics9050796",
    )[10.3390/electronics9050796]
]

#resume-entry(
  title: "Closing the Wearable Gap — Part II: Sensor Orientation and Placement for Foot and Ankle Joint Kinematic Measurements", location: "", date: "2019", description: "Sensors (MDPI)",
)

#resume-item[
  - SRS placement/orientation study with 3D motion capture ground truth; reports
    RMSE/R² across movements.
  - DOI: #link("https://doi.org/10.3390/s19163509")[10.3390/s19163509]
]
