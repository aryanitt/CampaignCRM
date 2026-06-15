# CampaignCRM

An all-in-one Customer Relationship Management (CRM) and Outreach platform built with modern technologies. It provides seamless management of your clients, smart AI-driven features, and powerful email campaign capabilities.

## 🚀 Features

- **Client & Lead Management:** Keep track of all your customer data in one centralized hub.
- **Smart Segments:** Group and segment your customers based on data attributes for highly targeted campaigns.
- **Email Campaigns:** Built-in email outreach integration using SMTP. Design, send, and track campaigns right from the dashboard.
- **AI-Powered Tools:** Integrated with Google Gemini AI to assist with content generation and smart analytics.
- **Rich Analytics:** Dedicated dashboards providing deep insights and metrics into your campaign performance and user engagement.
- **Secure Authentication:** Robust JWT-based authentication system to ensure your data stays private and secure.

## 💻 Tech Stack

**Frontend:**
- [Next.js](https://nextjs.org/) (React Framework)
- Tailwind CSS (Styling)
- TypeScript

**Backend:**
- Node.js & Express
- MongoDB (Database)
- Mongoose (ODM)
- TypeScript
- Nodemailer (SMTP Email integration)

## 🛠️ Setup & Installation

### Prerequisites
- Node.js (v18+ recommended)
- MongoDB account (or local MongoDB server)
- SMTP credentials (e.g., Gmail App Password)
- Google Gemini API Key

### 1. Clone the Repository
```bash
git clone https://github.com/aryanitt/CampaignCRM.git
cd CampaignCRM
```

### 2. Backend Setup
```bash
cd backend
npm install
```
- Create a `.env` file in the `backend` directory based on the `.env.example` structure.
- Add your MongoDB URI, JWT Secret, SMTP credentials, and Gemini API key.
- Start the server:
```bash
npm run dev
```

### 3. Frontend Setup
```bash
cd ../frontend
npm install
```
- Start the development server:
```bash
npm run dev
```
- The frontend will be available at `http://localhost:3000`.

## 🤝 Contributing
Contributions are always welcome! Please feel free to submit a Pull Request.

## 📝 License
This project is open-source and available under the MIT License.
