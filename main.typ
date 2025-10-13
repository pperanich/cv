#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Preston", lastname: "Peranich", email: "pperanich@gmail.com", homepage: "https://www.linkedin.com/in/preston-peranich-74166812a",
    // phone: "",
    // github: "",
    // twitter: "",
    // scholar: "",
    // orcid: "",
    // birth: "",
    linkedin: "preston-peranich-74166812a",
    // address: "",
    positions: ("Software Engineer",), custom: (),
  ), keywords: ("Software", "Embedded", "RF", "Avionics"), description: "Resume of Preston Peranich", profile-picture: image("profile.jpg"), date: datetime.today().display(), language: "en", colored-headers: true, show-footer: false, show-address-icon: true, paper-size: "us-letter",
)

= Experience

#resume-entry(
  title: "Associate Professional Staff I", location: "Laurel, MD", date: "June 2021 — Present", description: "The Johns Hopkins University Applied Physics Laboratory (Space Sector)",
)

#resume-item[
  - Software/firmware engineering within the RF Engineering group supporting
    spacecraft avionics testbeds and ground system tooling.
]

#resume-entry(
  title: "College Summer Intern", location: "Laurel, MD", date: "May 2019 — May 2021", description: "The Johns Hopkins University Applied Physics Laboratory",
)

#resume-item[
  - Collaborated on the creation of a spacecraft avionics testbed using an embedded
    Xilinx SoC running the RTEMS real-time OS.
  - Built custom interfaces for the COSMOS ground control system and cross‑platform
    software to interface with test equipment and devices under test.
  - Developed and documented a testing environment for external groups to reference
    for requirement verification tests.
]

#resume-entry(
  title: "Graduate Research Assistant", location: "Mississippi State, MS", date: "Aug 2019 — May 2021", description: "Mississippi State University",
)

#resume-item[
  - Designed a P‑band receiver to measure direct and reflected Signals of
    Opportunity for soil‑moisture inversion.
  - Continued development of a wearable sensor device for capturing movement of the
    foot/ankle complex.
]

#resume-entry(
  title: "Undergraduate Research Assistant", location: "Starkville, MS", date: "Aug 2016 — May 2019", description: "Center for Advanced Vehicular Systems, Mississippi State University",
)

#resume-item[
  - Worked with wearable sensors and wireless communication to prototype a real‑time
    device; created a GUI for live graphing.
  - Researched a platform to produce signals for a high‑power density three‑phase
    voltage source inverter with grid‑tie capability; collaborated on a robust
    switching algorithm and a GUI for a TI MCU.
]

#resume-entry(
  title: "System Test Intern", location: "Boulder, CO", date: "May 2018 — Aug 2018", description: "FreeWave Technologies",
)

#resume-item[
  - Developed and executed device‑network and system testing for radio products;
    automated tests with Python and unit tests.
  - Contributed to the CI pipeline to accelerate firmware feedback cycles;
    visualized test data with Splunk.
]

#resume-entry(
  title: "Avionics College Intern (G500/G600)", location: "Savannah, GA", date: "May 2017 — Aug 2017", description: "Gulfstream Aerospace",
)

#resume-item[
  - Performed Integrated Test Procedures and resolved problem reports; produced
    compliance reports and system documentation.
  - Authored Kinds of Operations reports and coordinated with engineers and test
    pilots to ensure regulatory compliance.
]

#resume-entry(
  title: "Shop Technician / Front Office", location: "Starkville, MS", date: "Feb 2016 — May 2016", description: "IBS / Hawk SCADA",
)

#resume-item[
  - Assisted with customer support and parts ordering; soldered and quality‑tested
    circuit boards for field deployment.
]

= Skills

#resume-skill-item(
  "Programming Languages", (strong("C++"), strong("C"), strong("Python"),),
)

#resume-skill-item("Tools & Platforms", ("RTEMS", "COSMOS", "Splunk", "CI/CD",))

= Honors & Awards

#resume-item[
  - MSSGC NASA Fellow (2019–2020)
  - MSSGC NASA Fellow (2020–2021)
]

= Education

#resume-entry(
  title: "Mississippi State University", location: "Starkville, MS", date: "2019 — 2021", description: "M.S., Electrical & Computer Engineering",
)

#resume-entry(
  title: "Mississippi State University", location: "Starkville, MS", date: "2015 — 2019", description: "B.S., Electrical & Electronics Engineering",
)

// ——— Optional Sections to Expand ———
// = Projects
// #resume-entry(title: "Project Name", location: "", date: "", description: "Role")
// #resume-item[
//   - Describe impact, metrics, noteworthy tech, or links.
// ]

// = Publications
// #resume-entry(title: "Paper Title", location: "", date: "Year", description: "Conference/Journal")

