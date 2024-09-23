# Inception [42 Project]
This 42 project challenges us to set up a small infrastructure composed of different
services under specific rule using Docker.

## Table of Contents
1. [Overview](#overview)
2. [Project Structure](#project-structure)
3. [Dependencies](#dependencies)
4. [How to Use](#how-to-use)
5. [Contributing](#contributing)

## Overview
This project make us learn more about docker, docker compose and the services used (nginx, wordpress, mariadb)

This project will not work because it misses the docker secrets files. If you want to make it work you will need to 
make the secrets yourself. Here's the structure i used.
```bash
./Inception/secrets
    db_password.txt
    wp_password.txt
    wp_user_password.txt
    tls/
-----------------------
./Inception/secrets/tls
    localhost.crt
    localhost.key
```

## Project Structure
- `Makefile`: Automatic build tool
- `srcs/`: Main directory containing the `docker compose`, `.env` and `requirements`
  - `requirements/`: Contains all service used (nginx, wordpress, mariadb)
  - `docker compose`: Tool to build multi-container apllications

## Dependencies
- `Docker` and `docker compose` (you can install it [here](https://docs.docker.com/engine/install/)

## How to Use
1. Clone the repository.
2. Navigate to the `Inception` directory: `cd Inception/`.
3. Build the containers : `make`
4. Open your browser and search : `https://localhost`

## Contributing
I welcome contributions. If you have any bug fix or improvement, feel free to submit a pull request on the repository.
