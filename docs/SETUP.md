# Installation and Configuration Guide for Data Migration Dashboard

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/DanielP0107/data-migration-dashboard.git
   cd data-migration-dashboard
   ```
2. Install dependencies:
   ```bash
   npm install
   ```

## Configuration
1. Create a `.env` file in the root of the project:
   ```bash
   cp .env.example .env
   ```
2. Configure your environment variables in the `.env` file:
   - `DB_HOST` - Your database host
   - `DB_USER` - Your database username
   - `DB_PASS` - Your database password
3. Run the application:
   ```bash
   npm start
   ```

## Additional Notes
- Make sure to have Node.js and npm installed on your machine.
- For detailed documentation, refer to the Wiki section on GitHub.