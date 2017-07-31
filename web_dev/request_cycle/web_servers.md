# Release 1: Research Web Servers

## What are some of the key design philosophies of the Linux operating system?
* The entire Unix philosophy revolves around the idea that the user knows what he or she is doing.
* Building simple, short, clear, modular, and extensible code that can be easily maintained and repurposed by developers other than its creators
* Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new "features"
* Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter output with extraneous information. Avoid stringently columnar or binary input formats. Don't insist on interactive input
* Design and build software, even operating systems, to be tried early, ideally within weeks. Don't hesitate to throw away the clumsy parts and rebuild them

## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
* A VPS is a virtual machine that runs a copy of an operating system. Users have admin access to install software as they wish.

### Advantages to a VPS
* Costs are very low
* Able to upgrade RAM or CPU with no downtime
* Ability to choose your OS
* Large amounts of resources available (more ram, disk, cpu...)
* You can set it up within minutes

## Why is it considered a bad idea to run programs as the root user on a Linux system?
* It defeats the purpose of the security system put in place. When logged in as root, youre running with administrative priveleges. The system wont ask you for permission. But when using a user account, you will not have as much "power".