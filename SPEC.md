%%%
title = "The Lyra Chat Messaging Protocol"
ipr = "trust200902"

[seriesInfo]
name = "Internet-Draft"
status = "standard"
value = "draft-steph-lyra-00"

[[author]]
initials = "S."
surname = "Wilde-Hobbs"
fullname = "Stephanie Wilde-Hobbs"
  [author.address]
  email = "hi@stephanie.is"
%%%

.# Abstract

TODO: not suck

Lyra is a federated messaging service for text-based communications between
people, and groups of people.
This document provides an overview of the Lyra protocol, defines the protocol
syntax, and defines commands and their semantics.

{mainmatter}

# Introduction

TODO: opening paragraph

Lyra has the following goals:

1. Simplicity. The specification should be easy to understand and implement.
2. Extensibility. The protocol should be flexible, without sacrificing
   simplicity.
3. Usability. Chat should be accessible for all users, with all accessibility
   needs, on all devices, including mobile devices, terminals, clients of other
   protocols, and automated services.
   
TODO: mention JSON [@!RFC8259]
   
## Terminology

The key words "**MUST**", "**MUST NOT**", "**REQUIRED**", "**SHALL**", "**SHALL
NOT**", "**SHOULD**", "**SHOULD NOT**", "**RECOMMENDED**", "**NOT
RECOMMENDED**", "**MAY**", and "**OPTIONAL**" in this document are to be
interpreted as described in BCP 14 [@!RFC2119] [@!RFC8174] when, and only when,
they appear in all capitals, as shown here.

The following terms are used throughout this document:

client:
: An entity which connects to a Lyra server, and is in possession of an account.

server:
: An entity which defines accounts and channels, can connect to other servers,
  and is reachable at a domain name.
  
account:
: An entity registered on a server, which can have multiple clients, and send
  messages to other accounts and join channels.
  
channel:
: An entity registered on a server, which has an account list of 

message:
: A JSON object, containing at least a textual message, and optional metadata,
  addressed to either an account or channel.

## Overall Operation

The Lyra messaging system consists of clients and servers, each of which
exchange commands with each other over persistent TCP connections with a common
syntax. Clients typically connect to one or a few servers, which they have
accounts on. Servers connect with many other servers to federate chat messages
between them.

# Connections

Connections between clients and servers, and between servers and servers are TCP
[@!RFC0793] connections, which **SHOULD** be negotiated with TLS [@!RFC8446].
Connections consist of a series of commands, each sent on a new line, terminated
by a US-ASCII LF character. Each command consists of a name and a variable
number of arguments.
   
{backmatter}
