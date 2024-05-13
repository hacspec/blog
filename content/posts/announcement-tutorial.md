---
author: "Lucas Franceschino"
title: "Announcing the hax tutorial"
date: "2024-05-13"
description: "We wrote a tutorial for hax!"
tags: ["tutorial", "announcement"]
ShowToc: false
ShowBreadCrumbs: false
---

We have been applying hax to verify several Rust pieces of software
recently. hax was used to verify [Libcrux's implementation of
ML-KEM](https://cryspen.com/post/ml-kem-verification/) with F*, but
also for [smart
contracts](https://popl24.sigplan.org/details/CoqPL-2024-papers/9/Specifying-Smart-Contract-with-Hax-and-ConCert)
verification with Coq, and even on
[protocols](https://github.com/cryspen/bertie) with F\* and our new
ProVerif backend.

Meanwhile, we also presented hax at several conferences and
workshops. The need for more documentation and guidance was becoming
apparent: it was about time to have a tutorial!

## New resources to learn more about hax

The [hax book](https://hacspec.org/book/) has three new chapters:
 - The [Quick start](https://hacspec.org/book/quick_start/intro.html)
   chapter explains how to go from a simple Rust crate to an F*
   extraction via hax, including how to install the tooling.
 - The [Tutorial](https://hacspec.org/book/tutorial/index.html)
   chapter goes more in-depth into using hax and F* together to prove
   various properties of Rust code.
 - The [FAQ](https://hacspec.org/book/faq/into.html) chapter is a work
   in progress but is intended to answer pragmatically and with
   examples to precise common issues or questions. Feel free to open
   an issue on the [book
   repository](https://github.com/hacspec/book/issues) if you feel like a topic should be addressed!

We also added several examples of Rust verification via hax and F* in
the [example
directory](https://github.com/hacspec/hax/tree/main/examples) of hax,
please check them out!


