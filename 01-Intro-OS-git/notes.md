# OS and Git Fundamentals

Before we dive into programming, it's good to get to know the lay of the land and how to get around our computers: our operating systems, the command-line interface and how to manage files and directories. We'll also learn about git and GitHub so that we can track changes to our projects.

## Agenda
After this lesson, you should have an understanding of:

  * How to use Slack and WSL2
  * [OS keyboard shortcuts](#os-overview)
  * [How to navigate your computer via the command-line](#command-line-review)
  * [The git workflow](#git)
  * [How to collaborate on projects with GitHub](#github)

## OS Overview
  * [Slides](https://drive.google.com/file/d/1FC-4ELw_M_dptujUxr0b7ttQJ06CoH5B/view?usp=sharing)
  * macOS or Linux are preferred for this course because they have full-featured UNIX-style command-line interfaces
    * UNIX-based operating systems are preferred for web development because we want our local development environment to be as similar to our production environment as possible and most of the web servers on the Internet are running Linux.
  * **Getting to know your keyboard shortcuts will help you be more productive**

### Useful applications
To get started with the program, you'll need a text editor, a command-line interface and a recent version of Ruby installed.

  * [VS code](https://code.visualstudio.com/)
  * Ruby with rbenv
  * Command-line applications (Terminal/ Windows Terminal, etc)
  * [Spectacle](https://spectacleapp.com) / win + arrow keys
  * Know your shortcuts for VScode 
    * [Linux](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf)
    * [MacOS](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)


## Command-line Review
  * Shells: bash & zsh
  * Common commands overview

## Git
  *[Slides](https://drive.google.com/file/d/17uGFXR55FTC2o7orXpB1d5q1DgLTIf3D/view?usp=sharing)
  * What is git and version control?
  * Creating a new repository
  * Checking status
  * Staging and unstaging
  * Creating commits


### Standard Git workflow:

```bash
$ git init
$ git add .
$ git status
$ git commit -m 'add a comment'
$ git status
```

## GitHub
Git and GitHub are two different things, but we'll often be working with them together. GitHub is a website where you can store your git repositories.

  * Remote repositories
  * Adding and removing
  * Pushing and pulling
  * Cloning
  * Forking

### Remote commands for git

Create a remote repository to GitHub named origin:
```bash
$ git remote add origin <ssh url to repo>
```

Pushing your code to origin (aka GitHub):
```bash
$ git push origin main
```

Pulling your code from origin (aka GitHub)

```bash
$ git pull origin main
```
