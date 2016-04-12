# Coding standards

Writing code that adheres to standards is important for many reasons. Coding standards:

- Ensure that large projects are coded in a consistent manner
- Demonstrate our professionalism as developers
- Improve maintainability by making code easier to understand, review, and contribute to

## Drupal coding standards

Each programming language has its own set of coding standards, and even within a language, different frameworks may have their own separate standards. That is the case for PHP and the Drupal framework.

When writing code for Drupal projects, we adhere to the Drupal coding standards. There is [extensive documentation of the Drupal coding standards](https://www.drupal.org/coding-standards) that our code should adhere to. Note, any custom PHP in a Drupal project (for example, a `RoboFile.php`, or Behat's `FeatureContext.php`) should also adhere to Drupal coding standards for consistency.

## Good practices

In addition to adhering to Drupal coding standards, there are other good practices we abide by:

- Include code comments anywhere that it would help other developers review or understand your code. It's better to over comment than under comment. Use git commit messages to provide additional information, but ensure that all the context a developer needs to understand the code is available in the code comments.
- Always use descriptive, readily-understood variable names. For example use `$node` rather than `$n`.
- Write modular code — if you're copying a block of code from elsewhere in the codebase, ask yourself if you could convert that block of code into its own function.

## PHP_CodeSniffer

To help us adhere to these standards, we use the [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer) tool along with the Drupal [Coder project](https://www.drupal.org/project/coder) which provides Drupal specific "sniffs" for PHP_CodeSniffer.

Drupal provides [detailed instructions for installing PHP_CodeSniffer](https://www.drupal.org/node/1419988).

### Command line usage

PHP_CodeSniffer can be run from the command line following [these instructions](https://www.drupal.org/node/1587138). We recommend creating the `drupalcs` alias as explained in those instructions.

PHP_Codesniffer also includes the PHP Code Beautifier and Fixer command `phpcbf`. This command can be run from the command line to automatically fix your coding standards violations. More detail on the `phpcbf` command is provided in the the [PHP_CodeSniffer wiki](https://github.com/squizlabs/PHP_CodeSniffer/wiki/Fixing-Errors-Automatically#using-the-php-code-beautifier-and-fixer)

### PhpStorm integration

In addition to running PHP_CodeSniffer from the command line, it is useful to see coding standard violations highlighted in your editor, especially real-time as you develop.

If you use PhpStorm as your IDE, then you can use PhpStorm's built-in coding assistance to indicate violations of coding standards as you write or review code.

While JetBrains (the team behind PHPStorm) provide documentation for [Code Sniffer and Coder integration](https://confluence.jetbrains.com/display/PhpStorm/Drupal+Development+using+PhpStorm#DrupalDevelopmentusingPhpStorm-CoderandPHPCodeSnifferIntegration), you may find that [these instructions](http://justdrupal.com/php-code-sniffer-in-phpstorm-for-drupal/) are more clear and up to date.

We also recommend updating PhpStorm's default syntax and formatting to conform with Drupal coding standards, further easing compliance with the standards. [This guide](https://www.drupal.org/node/1962108) documents steps for configuring PhpStorm for Drupal.

In addition, PhpStorm provides a [Reformat Code](https://www.jetbrains.com/help/phpstorm/2016.1/reformatting-source-code.html?origin=old_help) command that automatically reformats selected code to your defaults settings.

## Other tools

### PHPMD

[PHP Mess Detector (PHPMD)](https://phpmd.org/) is another tool that helps you write better code. According to the documentation PHPMD "takes a given PHP source code base and look for several potential problems within that source...like: possible bugs, suboptimal code, overcomplicated expressions, and unused parameters, methods, [and] properties". The PHPMD documentation provides [installation](https://phpmd.org/download/index.html) and [command line usage](https://phpmd.org/documentation/index.html) instructions.

### phpcs-security-audit

The phpcs-security-audit project provides additional secuity sniffs for PHP_CodeSniffer. Per [the documentation](https://github.com/FloeDesignTechnologies/phpcs-security-audit) "phpcs-security-audit is a set of PHP_CodeSniffer rules that finds flaws or weaknesses related to security in PHP and its popular CMS or frameworks".

## Fixing legacy code

Often times, you'll find yourself updating legacy code. Unfortunately, not all developers adhere to coding standards as strictly as we do.

Our policy is that you should leave legacy code better off than the way you found it. If you find yourself updating pre-existing files, you should ensure that the entire file and not just your additions adheres to Drupal's coding standards before creating a pull request.

When updating legacy code to conform to Drupal standards the PHP_Codesniffer's `phpcbf` command and PHP Storm's "Reformat Code" command are very helpful.

To ease review of pull requests that affect legacy code:

- Coding standards fixes on legacy code should be in their own commits with no other additions - including bug fixes, feature additions, or refactoring.
- These commits should be the first commits in a pull request, with all other commits for bug fixes, feature additions, or refactoring coming after.

Abiding by these guidelines will make it much easier for your teammates to efficiently review your pull requests.

