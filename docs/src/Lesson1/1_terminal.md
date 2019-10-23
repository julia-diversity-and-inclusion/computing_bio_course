# Part 1 - Navigating the filesystem using the terminal

You are probably already familiar with
your computer's **[^file system]**.
If you've ever looked at files on your `Desktop`,
or opened `Finder`/`Explorer` and navigated to your `Documents` folder,
you've been using the file system.
Data is stored on your hardrive as a continuous binary sequence (just `1`s and `0`s)
and without a filesystem, it would be impossible to find anything!

`Finder`/`Explorer` are software programs used to interact with your filesystem.
The filesystem contains a mix of files,
which are blobs of information (eg. a `.docx` file containing a MS Word doc)
and folders, which can contain files as well as other folders.
Just to be confusing,
what we colloquially call folders are technically called "directories."
I will use the terms interchangably.

![File system hierarchy](https://www.oreilly.com/library/view/macintosh-terminal-pocket/9781449328962/httpatomoreillycomsourceoreillyimages1448104.png)

You may not have thought much about how the filesystem is organized,
but you probably have an intuitive sense of how this works.
Your **[^home]** directory contains the `Desktop` and `Documents` folders,
each of which might contain many other subfolders and/or files,
and each subfolder may have yet more subfolders and files and so on.

`Finder`/`Explorer` are examples of a graphical user interface (GUI - pronounced "gooey"),
that is a program that allows you to interact with it visually.
However, GUIs are difficult to design and maintain,
so most bioinformatics tools are built around **[^command line]**
or text-based interfaces.
The good news is that the organization of the filesystem
is the same whether you're interacting with it in a GUI or in the terminal.
And once you learn how to use the command line interface,
you'll see that it is a powerful way to get a lot done quickly.

## 1.1: Open the terminal application

**Mac Users**:  
1. Open Applications
2. Click Open the `Terminal` application

**Windows Users**:  
1. Click Start -> Programs
2. Open Windows Subsystem for Linux

You will be greated with a white or black box that contains some text,
and a cursor next to the dollar symbol `$`.
This is the command prompt.

## 1.2 Walk around your file system

Think of your filesystem as a branching network of roads
that you can walk along.
Each directory is a location that has a path back to its parent directory,
may or may not contain objects (files),
and may have one or many roads leading to new locations (subdirectories).

Your present location,
referred to as the **working directory**[^working directory],
is your home folder when you first open the terminal.
Let's see where that is.
In your terminal, type `pwd` and press enter.

```sh
$ pwd
```
```
/Users/kevin
```

This is the "print working directory" command.

!!! tip
    Whenever you see code blocks in these lessons that start with `$ `,
    this is a hint that it is a shell command.
    When copying or typing these commands,
    **do not** include the `$ `.
    For example, to complete the task above,
    you should only type `pwd`,
    then press enter.

    `$` is referred to as the "prompt" or "command prompt."
    When you enter a command, you may or may not see some output
    (which will not be preceeded by `$`)
    and once the command has finished executing,
    you will see a new prompt.

The filesystem is organized hierarchically -
At the very top of the hierarchy is the **[^root]**,
which you can think of as a folder that contains all other files and folders.
On a Mac (and other Unix systems),
the root is referred to with a single forward slash (`/`),
While on Windows machines, the root is probably `C:\`.

!!! note "Windows Users"
    When you open Windows Subsystem for Linux, you're actually running
    a fully functional OS with its own file system.
    As a result, when you type `pwd` in the terminal,
    you will likely see something like `/home/yourname`,
    rather than seeing your main OS home folder.

    But WSL has access to your files in a special path, `/mnt/c/`.
    If you want to see the files in your `Documents` folder for example,
    look in `/mnt/c/Users/yourname/Documents`.

### Moving around

- `cd`
- `ls`
  - `ls -al`
- relative vs absolute paths

### Manipulating files

- `mkdir`, `rmdir`
- `cp`, `mv`, `rm`
- globs

## Key Terms

[^file system]: a hierarchical organization of files and folders. [Additional reading](https://en.wikipedia.org/wiki/File_system)
[^root]: the top of the filesystem hierarchy. A folder that contains all other files and folders.
[^home]: a user's primary folder containing `Desktop`, `Documents`, and other user-specific folders and files.
[^command line]: a text-based interface for interacting with your computer. Also referred to as "terminal" or "shell."
[^working directory]: the current beginning of relative paths. Equivalent to `.` or `./`
