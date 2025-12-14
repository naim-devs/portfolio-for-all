<div align="center">

  <h1>🚀 Portfolio for All Beginners</h1>
  
  <p>
    <strong>A fully dynamic, high-performance Portfolio CMS built with Laravel.</strong>
    <br>
    Manage every aspect of your agency or personal website without touching a single line of code.
  </p>

  <p>
    <a href="https://github.com/naim-devs/portfolio-for-all">
      <img src="https://img.shields.io/github/last-commit/naim-devs/portfolio-for-all?style=for-the-badge&logo=github&color=blue" alt="Last Commit">
    </a>
    <a href="https://github.com/naim-devs/portfolio-for-all/issues">
      <img src="https://img.shields.io/github/issues/naim-devs/portfolio-for-all?style=for-the-badge&logo=github&color=orange" alt="Issues">
    </a>
    <a href="https://github.com/naim-devs/portfolio-for-all/stargazers">
      <img src="https://img.shields.io/github/stars/naim-devs/portfolio-for-all?style=for-the-badge&logo=github&color=yellow" alt="Stars">
    </a>
    <img src="https://img.shields.io/badge/Laravel-10%2B-FF2D20?style=for-the-badge&logo=laravel&logoColor=white" alt="Laravel">
  </p>
  
  
</div>

<br>

## 📖 About The Project

**Portfolio for All** is a robust web application designed for developers, creative agencies, and freelancers. Unlike static HTML templates, this project comes with a powerful **Admin Dashboard** that gives you full control over your content. 

Whether you want to change the **Logo**, update **Pricing Plans**, add new **Projects**, or manage **Newsletters**, you can do it all from a secure backend.

---

## ✨ Features

### 🎨 Frontend (User Experience)
*   **Glassmorphism Design:** Modern UI with glassy headers and cards.
*   **Fully Responsive:** Optimized for Mobile, Tablet, and Desktop.
*   **Dynamic Content:** Data is fetched in real-time from the database.
*   **Contact Form:** Integrated with **SMTP** for real-time emailing.
*   **Project Links:** Direct links to live project previews.
*   **Newsletter:** Footer subscription system with validation.

### 🛠️ Admin Panel (CMS Capabilities)
*   **Dashboard Overview:** Quick stats and management tools.
*   **General Settings:**
    *   Upload Logo (Image) or set Text Logo.
    *   Update Contact Info (Address, Email, Headings).
*   **Section Management:**
    *   **Hero & About:** Edit titles, subtitles, experience counters, and images.
    *   **Services:** Add/Delete services with FontAwesome icons support.
    *   **Portfolio:** Upload project images, set categories, and add external links.
    *   **Features:** Manage "Why Choose Us" section dynamically.
    *   **Pricing:** Create plans with "Recommended" highlighting logic.
    *   **FAQ:** Accordion-style Q&A management.
*   **Subscribers:** View and delete newsletter subscriber emails.

---

## 🛠 Tech Stack

| Component | Technology |
| :--- | :--- |
| **Framework** | ![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=flat-square&logo=laravel&logoColor=white) |
| **Frontend** | ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black) |
| **Admin UI** | ![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=flat-square&logo=bootstrap&logoColor=white) |
| **Database** | ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white) |
| **Icons** | FontAwesome 6 |

---

## 🚀 Installation

Follow these steps to set up the project locally.

### 1. Clone the Repository
```bash
git clone https://github.com/naim-devs/portfolio-for-all.git
cd portfolio-for-all
```
3. Open .env file and set up your database credentials:
```bash
Env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=root
DB_PASSWORD=
```

Admin Access
To manage the website, go to http://your-domain.com/login

🔐 Admin Email
```bash
admin@gmail.com
```
🔐 Admin Password
```bash
password123
```
📧 SMTP Configuration (Optional)
To make the Contact Form work, update your .env file with Gmail SMTP credentials:
```bash
Env
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=your-gmail@gmail.com
MAIL_PASSWORD="your-app-password"
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS="your-gmail@gmail.com"
```

🤝 Contributing
Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.
Fork the Project
<li>Create your Feature Branch (git checkout -b feature/AmazingFeature)</li>
<li>Commit your Changes (git commit -m 'Add some AmazingFeature')</li>
<li>Push to the Branch (git push origin feature/AmazingFeature)</li>
⭐️ Show your support
Give a ⭐️ if this project helped you!
<div align="left">
<p>Made with ❤️ by <a href="https://github.com/naim-devs">Naim Devs</a></p>
</div>
