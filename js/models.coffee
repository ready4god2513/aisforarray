@app.factory "Staff", ->
      
  staff = {}
  staff.openings = [
    {
      name: "UX / UI Developer",
      slug: "ux-ui-developer",
      tagline: "",
      summary: "Make them Bethel Media UX / UI Developers are passionate about defining and implementing graphical user interfaces.  As a vital member of our team, and working closely with our world-class web designers, you will bring both an eye for design and the skill to execute. You will give input and guidance during the design process and will be responsible for styling, interaction, and markup development based on the concepts and direction provided by our creative team. (You would be primarily focused on our Ruby on Rails projects.)"
      form: "https://docs.google.com/a/ibethel.org/spreadsheet/embeddedform?formkey=dFNyRFFmUWhxQUliQ2xELUh0VEVmZGc6MQ",
      color: "#ad2e5d",
      darker_color: "#891a43",
      image: "img/img_uxuideveloper.jpg",
      skills: [
        "Takes direction well",
        "Works well as part of a team",
        "Focused on producing a high quality end product",
        "Knowledgable of web standards",
        "Agile experience desired",
        "Good front-end development skills desired",
        "Able to prioritize own workload",
        "Desire to learn and grow",
        "Able to translate business requirements to technical solutions",
        "Takes ownership of work"
      ],
      responsibilities: [
        "Styling, interation and markup development based on wireframes and design mockups",
        "Bridge gap between design and technology",
        "Provide alternative solutions when design exceeds technology limitations",
        "Building out designs from a psd from our design team"
      ],
      qualifications: [
        "2-3 years technical experience in related field",
        "4-year college degree or equivalent experience in programming",
        "Working knowledge of MVC frameworks",
        "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, Compiled CSS, CoffeeScript"
      ]
    }
    {
      name: "Drupal Developer",
      slug: "drupal-developer",
      tagline: "Build our apps",
      summary: "Bethel Media Drupal Developers build high quality web applications with great user experiences. On our team of software developers and designers, you will be responsible for theming, module development, and configuration of all Bethel Drupal sites. You will be working closely with our experienced web designers by giving input during the design process to ensure that the designs will work within Drupal’s technical constraints.",
      form: "https://docs.google.com/a/ibethel.org/spreadsheet/embeddedform?formkey=dFNyRFFmUWhxQUliQ2xELUh0VEVmZGc6MQ",
      color: "#119c8d",
      darker_color: "#0a796d",
      image: "img/img_drupaldeveloper.jpg",
      skills: [
        "Ability to create website from a .PSD",
        "Focused on producing a high quality end product",
        "Agile experience desired",
        "Able to prioritize own workload",
        "Able to translate business requirements to technical solutions",
        "Ability to work in a fast-paced, dynamic, team environment"
      ],
      responsibilities: [
        "Write and/or oversee all of the CSS, HTML and Javascript on the Bethel’s Drupal sites",
        "Configure and update the code on Bethel's CMS websites",
        "Write custom modules for CMS websites",
        "Provide recommendations for best practices in CMS websites",
        "Play a role in sprint pre-planning such as providing input into writing stories and estimating",
        "Set up development, test and production environments for new web applications",
        "Continue to stay current with new releases of Drupal"
      ],
      qualifications: [
        "Proficient in CSS, HTML, Javascript, AJAX, MySQL and PHP.",
        "Proficient in the current version of Adobe CS",
        "3 to 5 years of Drupal experience (CMS Framework, Themes, Modules, Core, etc.). Ability to provide samples of applications you have developed is desired.",
        "Experience with and understanding of cross browser compatibility issues",
        "Agile experience is desired",
        "Experience with git or similar source control system",
        "Proficient in the maintenance and administration of Drupal modules and sites"
      ]
    }
    {
      name: "Software Engineer",
      slug: "software-engineer",
      tagline: "Build our apps",
      summary: "Bethel Media Software Engineers provide world-class systems, rich web applications, and comprehensive solutions. You will be working closely with our experienced web designers by giving input during the design process to ensure that the designs will work within our technical constraints.   You will be responsible for providing technical leadership on projects, reviewing code developed by other members of the technical team, assisting in developing and estimating stories as part of the agile methodology and assisting/mentoring  any junior web developers on the team. (You would be primarily focused on our Ruby on Rails projects.)",
      form: "https://docs.google.com/a/ibethel.org/spreadsheet/embeddedform?formkey=dFNyRFFmUWhxQUliQ2xELUh0VEVmZGc6MQ",
      color: "#a6c657",
      darker_color: "#8cac3b",
      image: "img/img_softwareengineer.jpg",
      skills: [
        "Able to adapt to changes in project  priorities",
        "Desire to learn and grow",
        "Follows good unit testing methodology",
        "Able to translate business requirements into technical solutions",
        "Agile experience desired"
      ],
      responsibilities: [
        "Review code developed by other developers on team",
        "Play a role in sprint pre-planning such as providing input into stories and estimating",
        "Ability to research and provide technical solutions based on business rules",
        "Be able to assist and mentor junior web developers on team",
        "Set up development, test and production environments for new web applications",
        "Ensure applications perform well during times of peak usage"
      ],
      qualifications: [
        "Experience on a team of developers using Agile software development methodology.",
        "3 - 5+ years experience in working with a team of software developers.",
        "Previous experience in open-source programming languages.",
        "4 year degree in a related field or equivalent work experience.",
        "Experience working with MVC frameworks.",
        "Experience with Ruby on Rails, PHP, MySQL, CSS, Sass, HTML, Haml, Javascript, Coffeescript.  jQuery, Coffeescript."
      ]
    }
    {
      name: "Web Designer",
      slug: "web-designer",
      tagline: "Make them look cool",
      summary: "Bethel Media Web Designers provide world-class user experiences for Bethel’s local and global community. As a part of the Bethel family, you will work closely with a talented and growing team on interactive projects, rich applications and compelling user experiences. You will be responsible for wireframing, designing, and leading the overall thought and direction of the user experience.",
      form: "https://docs.google.com/a/ibethel.org/spreadsheet/embeddedform?formkey=dFNyRFFmUWhxQUliQ2xELUh0VEVmZGc6MQ",
      color: "#de3a3e",
      darker_color: "#c5292d",
      image: "img/img_webdeveloper.jpg",
      skills: [
        "Passionate, confident, professional",
        "Ability to work under pressure",
        "Easily inspired and can inspire others",
        "Takes direction well",
        "Leads when necessary",
        "Not boring",
        "Creates fresh concepts",
        "Strong in both UX and UI design",
        "Strong execution and production skills",
        "Proficient in multiple design software",
        "Understanding of information architecture",
        "Knowledgeable in web design trends and techniques, as well as designing for accessibility and web standards",
        "Agile experience desired",
        "Good front-end development skills desired"
      ],
      responsibilities: [
        "Use design to improve visitor experience and conversion rates.",
        "Responsible for content layout, visual appearance, and usability design.",
        "Translate rough business ideas into visual solutions (from sketches to wireframes to mockups)",
        "Present design concepts, usability findings and solutions to internal stakeholders",
        "Express and extend the Bethel brand online.",
        "Operates effectively as a member of the development team."
      ],
      qualifications: [
        "Bachelor of Art (B/A) degree in Graphic/Web Design or equivalent experience required.",
        "Strong portfolio of web design work required.",
        "A high level of proficiency with Photoshop, Illustrator, Fireworks",
        "Working knowledge of HTML & CSS.",
        "Ability to thrive in a fast-paced environment, meet deadlines, juggle multiple projects, and proactively identify opportunities for improvement.",
        "Must be an enthusiastic self-starter with a desire to continuously improve skills."
      ]
    }
  ]
  
  staff