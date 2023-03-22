## Original

[Link](https://www.youtube.com/watch?v=bYdiF06SLWc)

## Get Context

Read. The. Docs.

Most of the high level bugs and exploits came from business logic exploits. 

Create a glossary of project keywords/entities. 

## Get the environment

Clone repo and make tests works (Foundry). 

## Clarify the scope

Order files by cloc (or solidity metrics), filter interfaces & etc. Focus on important (big?) parts.

Track progress and status of auditing in each file (Notion)

## Read previous audit reports

Check for high risk findings to understand attack vectors people are thinking of.

## Start analyzing code

Start with "little Legos", simple things and move up in complexity.

If a Contract inherits from others, check them first.

Check access controls, if strict like onlyOwner, go further cuz the surface of attack is reduced.

Taking short notes in a code, even informing that you checked this function.

Taking detailed notes separately helps better understanding. 

Write ideas.

Draw diagrams (optional).

Goal - build a mental model by going up and composing logics based on small logical blocks of functionality.

Write questions, like "what this constant is for", to answer later.

Pay attention not to go deep in domain specific logic unrelated to the project.

## Write separate list of issues and test it

Track all possible issues.

Write tests to confirm or skip issues.

Can go up from small issues to increase attack surface.

## Communicate with dev team

Ask questions, raise issues.

Not to trust too much on devs cuz their interpretations can be wrong.
