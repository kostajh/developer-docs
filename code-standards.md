# Coding standards

Writing code that adheres to standards is important for many reasons. Coding standards

- Ensure that large projects are coded in a consistent manner.
- Demonstrate your professionalism as a developer.
- Improves maintainability by making code easier to understand, review, and contribute to.

## Drupal standards

Each programming language has it's own set of coding standards, and even within a language, different
frameworks may have their own separate standards. That is the case for PHP and the Drupal framework.

As primarily Drupal developers, we adhere to the Drupal coding standards. There is [extensive documentation of the Drupal coding standards](https://www.drupal.org/coding-standards) that our code should adhere to.

## Good practices

In addition to adhering to Drupal coding standards, there are other good practices we abide by:

- Include comments anywhere that it would help other developers review or understand your code. It's better to over comment than under comment.
- Use descriptive variable names, for example use `$node` rather than `$n`.
- Your code should be modular - if you're copying a block of code from elsewhere in the codebase, ask yourself if you could convert that block of code into its own function.

## PHP_Codesniffer

To help us adhere to these standards, we use the [PHP_Codesniffer](https://github.com/squizlabs/PHP_CodeSniffer) tool along with the Drupal [Coder project](https://www.drupal.org/project/coder) which provides Drupal specific "sniffs" for PHP_Codesniffer.

Drupal provides [detailed instructions for installing PHP_Codesniffer](https://www.drupal.org/node/1419988).

### Command line usage

PHP_Codensiffer can be run from the command line following [these instructions](https://www.drupal.org/node/1587138). We recommend creating the `drupalcs` alias as explained in those instructions.

PHP_Codesniffer also includes the PHP Code Beautifier and Fixer command `phpcbf`. This command can be run from the command line to automatically fix your coding standards violations. More detail on the `phpcbf` command is provided in the the [PHP_Codesniffer wiki](https://github.com/squizlabs/PHP_CodeSniffer/wiki/Fixing-Errors-Automatically#using-the-php-code-beautifier-and-fixer)

### PHPStorm integration

In addition to running PHP_Codesniffer from the command line, it is useful to see coding standard violations highlighted in your editor, especially real-time as you develop.

We use PHP Storm as our IDE. PHPStorm provides built-in coding assistance that can be supplemented with PHP_Codesniffer to indicate non-compliant code as you develop.

While JetBrains (the team behind PHPStorm) provide documentation for [Code Sniffer and Coder integration](https://confluence.jetbrains.com/display/PhpStorm/Drupal+Development+using+PhpStorm#DrupalDevelopmentusingPhpStorm-CoderandPHPCodeSnifferIntegration), you may find that [these instructions](http://justdrupal.com/php-code-sniffer-in-phpstorm-for-drupal/) are more clear and up to date.

We also recommend updating PHPStorm's default syntax and formatting to conform with Drupal coding standards, further easing compliance with the standards. [This guide](https://www.drupal.org/node/1962108) documents steps for configuring PHPStorm for Drupal.

In addition, PHP Storm provides a "[Reformat Code](https://www.jetbrains.com/help/phpstorm/2016.1/reformatting-source-code.html?origin=old_help)" command that automatically reformats selected code to your defaults settings.

## Other tools

### PHPMD

[PHP Mess Detector (PHPMD)](https://phpmd.org/) is another tool that helps you write better code. According to the documentation PHPMD "takes a given PHP source code base and look for several potential problems within that source...like: possible bugs, suboptimal code, overcomplicated expressions, and unused parameters, methods, [and] properties". The PHPMD documentation provides [installation](https://phpmd.org/download/index.html) and [command line usage](https://phpmd.org/documentation/index.html) instructions.

### phpcs-security-audit

The phpcs-security-audit project provides additional secuity sniffs for PHP_Codesniffer. Per [the documentation](https://github.com/FloeDesignTechnologies/phpcs-security-audit) "phpcs-security-audit is a set of PHP_CodeSniffer rules that finds flaws or weaknesses related to security in PHP and its popular CMS or frameworks".

## Fixing legacy code

Often times, you'll find yourself updating legacy code. Unfortunately, not all developers adhere to coding standards as strictly as we do.

Our policy is that you should leave legacy code better off than the way you found it. If you find yourself updating pre-existing files, you should ensure that the entire file and not just your additions adheres to Drupal's coding standards before creating a pull request.

When updating legacy code to conform to Drupal standards the PHP_Codesniffer's `phpcbf` command and PHP Storm's "Reformat Code" command are very helpful.

To ease review of pull requests that affect legacy code:

- Coding standards fixes on legacy code should be in their own commits with no other additions - including bug fixes, feature additions, or refactoring.
- These commits should be the first commits in a pull request, with all other commits for bug fixes, feature additions, or refactoring coming after.

Abiding by these guidelines will make it much easier for your teammates to efficiently review your pull requests.

