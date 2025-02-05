# Blog app using LND

This application showcases how to communicate with an
[LND](https://github.com/lightningnetwork/lnd/) node to send and receive payments over the
[Lightning Network](http://lightning.network/).

## Demo video

https://www.youtube.com/watch?v=hDpF9dsrlQU

## Overview

| Endpoint                                                            | Description                                                               |
| ------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| [`getinfo`](https://api.lightning.community/#getinfo)               | returns general information concerning the lightning node                 |
| [`channelbalance`](https://api.lightning.community/#channelbalance) | returns the total funds available across all open channels in satoshis    |
| [`signmessage`](https://api.lightning.community/#signmessage)       | signs a message with this node's private key                              |
| [`verifymessage`](https://api.lightning.community/#verifymessage)   | verifies a signature of a message                                         |
| [`addinvoice`](https://api.lightning.community/#addinvoice)         | creates a new invoice which can be used by another node to send a payment |
| [`lookupinvoice`](https://api.lightning.community/#lookupinvoice)   | look up an invoice according to its payment hash                          |

This app is a basic Reddit clone with this small list of features:

- view a list of posts on the home page sorted by votes
- click on the Upvote button for a post should increment its number of votes
- create a post containing a username, title, and description

Key features of the lightning network integration:

- connect your node to the app by providing your node's host, certificate and macaroon
- display your node's alias and channel balance
- create posts and sign them using your LND node's pubkey
- verify posts made by other users
- up-vote a post by paying 100 satoshis per vote

## Running the App Locally

Requirements: [NodeJS v12.x](https://nodejs.org/en/download/) &
[Yarn v1.x](https://classic.yarnpkg.com/en/docs/install)

Clone the repo

```
git clone https://github.com/espieux/lnd-blog-app
```

Install dependencies

```
cd lnd-blog-app
yarn
```

Start the API server and client app development server

```
yarn dev
```

Open your browser and navigate to `http://localhost:3000`.
