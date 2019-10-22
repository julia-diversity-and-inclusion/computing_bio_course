# Part 2 - git for version control

If you've ever worked on an assignment
and ended up with a list of files like

- `assignment1.docx`
- `assignment1_v2.docx`
- `assignment1_v2_kevins_comments.docx`
- `assignment1_v3_fix_final.docx`
- `assignment1_v3_fix_final_for_real_this_time.docx`

... you'll understand the importance of version control.

It goes well beyond naming of course.
How can you tell what changed between version 1 and version2?
Does version 3 take the comments Kevin made on v2 into account?
Is `...fix_final_for_real_this_time` _really_ the last version?

It's even worse if multiple people are working on the same document.
If you and your lab partner are editing a document at the same time,
How can you gracefully merge the changes?
What if the changes you make and the changes she makes are incompatible?

Software like Google Docs can address some of these issues,
but incompatible changes can still occur.
Imagine you're writing an essay about a dog.
At the beginning of the essay, you've written

> The quick brown fox jumped over the lazy dog

You and your partner are both refining this epic story at the same time,
and further on you write,

> Because of how lazy the dog was, she didn't chase the fox.

But your partner decided the first line needed some more detail
and changes it to

> The quick brown female fox jumped over the lazy male dog.

so your pronouns are out of step.

In writing, a mistake like this might just look silly,
but in programming, it can mean your code doesn't run
or generates the wrong answer.

## git is a program for "distributed version control"

`git` is a distributed version control system (DVCS).
That is, it helps one keep track of their code (version control system),
and the information about versions is distributed among many systems.

Early version control systems were centralized -
there was a single server that kept track of
all of the information about a code repository.
Users could "checkout" individual files to edit them,
and the central repository would lock that file to prevent conflicting changes.
This makes it easy to prevent conflicts,
but is also a bit impractical.

By contrast, git is distributed -
each user's system contains the entire revision history,
and conflicts between are explicitly managed when
two different edits to the code are brought together.
Don't worry if this isn't super clear at this stage -
we'll get into some practical examples in a sec.

## Using git in this course

It might not be clear to you yet why
using a version control system is worthwhile.
If you don't trust me,
the fact that almost every software company uses git (or something similar)
should give you some confidence that it's important.

In any case, this entire course will use git and github.com (a website for
managing and collaborating on git repositories).
So let's work on doing that.

### Assignment 1

1. If you haven't already, sign up for a github account at https://github.com/join

!!! warning "Privacy Note"
    You do not need to use your `wellesley.edu` email address to create this account,
    but let Kevin know if you use a different address
    so that you get credit for your work.

2. If you'd like, you may sign up for a [github student discount pack](https://education.github.com/pack). This is not necessary for this course.
3. Accept assignment 1 at [this link](https://classroom.github.com/a/M0Xe9uT2)
