# Contributing to MERN Auth

Thank you for your interest in contributing to the MERN Auth project! We welcome contributions from the community.

## Getting Started

1.  **Fork the repository** on GitHub.
2.  **Clone your fork** locally:
    ```bash
    git clone https://github.com/your-username/mern-auth.git
    cd mern-auth
    ```
3.  **Install dependencies**:
    ```bash
    npm install
    ```
4.  **Set up environment variables**:
    - Copy `.env.template` to `.env`
    - Fill in the required values (MONGO_URI, etc.)

## Development

- **Run locally**:
    ```bash
    npm run dev
    ```
-   **Run with Docker**:
    ```bash
    docker-compose up --build
    ```

## Testing

We use Jest for testing. Please ensure all tests pass before submitting a PR.

```bash
npm test
```

## Submitting a Pull Request

1.  Create a new branch for your feature or bugfix.
2.  Commit your changes with clear messages.
3.  Push to your fork and submit a Pull Request.
4.  Describe your changes in detail in the PR description.

## License

This project is licensed under the MIT License.
