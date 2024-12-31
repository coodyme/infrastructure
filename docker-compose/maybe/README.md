# Maybe 

To run the Maybe app, you will need to have Docker installed on your computer. If you do not have Docker installed, you can download it [here](https://www.docker.com/products/docker-desktop).

Then, you can follow the instructions below to run the app.

## Generate the app secret key

The app requires an environment variable called SECRET_KEY_BASE to run.

We will first need to generate this in the terminal. If you have openssl installed on your computer, you can generate it with the following command:

```bash
openssl rand -hex 64
```

Alternatively, you can generate a key without openssl or any external dependencies by pasting the following bash command in your terminal and running it:

```bash
head -c 64 /dev/urandom | od -An -tx1 | tr -d ' \n' && echo
```
Once you have generated a key, save it and move on to the next step.

## Run the app

You are now ready to run the app. Start with the following command to make sure everything is working:

```bash
docker compose up -d
```

This will pull our official Docker image and start the app. You will see logs in your terminal.

Open your browser, and navigate to http://localhost:3000.

If everything is working, you will see the Maybe login screen.


## How to update your app

https://github.com/maybe-finance/maybe/blob/main/docs/hosting/docker.md