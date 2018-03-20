---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
---

$$
\newcommand{code}[1]{\mathtt{#1}}
$$

# The Oluś Language

```
main exit:
    print "Hello, World!" (:)
    exit
```

```
fact n return:
    if (isZero n) (:return 1) (:)
    return (mul n (fact (sub n 1)))
```

```
fib n return:
    if (isZero n) (:return 0) (:sub n 1 (m:))
    if (isZero m) (:return 1) (:sub m 1 (k:))
    return (add (fib m) (fib k))
```

## Continuation passing style

The Oluś language is the only continuation passing style programming language. This is a different paradigm, just like imperative, functional and stack based are paradigms. Strict continuation passing style has the following consequences:

* Every procedure has exactly one call in its function body.
* There are no return values.
* Every call is a tail call.
* There is no stack.

Furthermore, the only way to store data is through closures. This sounds restrictive, but it is very expressive in practice. 

Especially with a little bit of syntax sugar added.

## Language features

* Continuation passing style
* Call-by-value
* Pure (or rather, deterministic)
* Strict evaluation

## Formal reasoning

The language is deliberately very minimalist, like lambda calculus. It is arguably even simpler than lambda calculus. It was created to be an easy language to reason about, while still being able to easily express complex algorithms.

[Language introduction](/introduction)

[Syntax definition](/syntax)
