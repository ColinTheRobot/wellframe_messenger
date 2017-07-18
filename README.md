# README
## Wellframe Full Stack Unread Messages Coding Challenge

# Overview

The goal of this challenge is to design and implement a version of our messaging
functionality. At Wellframe, our goal is it to provide healthcare resources in a scalable manner through technology. Part of that mission involves communicating with our patients about various things they should do such as taking their medications or following up with their PCP.

Messaging is usually the task of a care manager.

### Product Requirements
- There are two types of users
  - Patient
  - Care Manager
- Each patient is part of exactly one message thread in which many care managers can participate in
- Each user should be able to get their list of message thread (1 for a patient, n for a care manager), as well as the number of unread messages in those threads.
- Expose the following API endpoints:
  - GET `/message_threads`
    - Return a list of threads with id:int, unread_messages:int (number of
unread messages in the thread by the user)
  - PATCH `/message_threads/{id}`
    - Marks the message thread as read
  - GET `/message_threads/{id}/messages`
    - For each message, return id: int, message_text: string, author: string
  - POST `/message_threads/{id}/messages`
    - Parameter: { message_text: string }

### Challenges/Stretch Goals
- Authentication
  - You can ignore authentication for now and just pass the current user in a
parameter. However if you would like to, you could implement proper
authentication.
  - Provide a simple web-based UI to show the message threads as a given user
- Tests
  - You should probably have 1 or 2 very basic tests that help in development, but
consider a complete test suite a stretch goal

### Deliverables
- Write-up
