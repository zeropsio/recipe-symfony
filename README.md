# Zerops x Symfony

[Symfony Demo](https://github.com/symfony/demo) is a demo web application based on Symfony Framework, Twig and Doctrine libraries.  
[Zerops](https://zerops.io) recipe for Symfony Demo app includes sessions stored in Redis, and PostgreSQL DB with doctrine migrations.

![symfony](https://raw.githubusercontent.com/zeropsio/recipe-shared-assets/main/covers/svg/cover-symfony.svg)

<br/>

## Deploy on Zerops
You can either click the deploy button to deploy directly on Zerops, or manually copy the [import yaml](https://github.com/zeropsio/recipe-symfony/blob/main/zerops-project-import.yml) to the import dialog in the Zerops app.

[![Deploy on Zerops](https://raw.githubusercontent.com/zeropsio/recipe-shared-assets/main/deploy-button/green/deploy-button.svg)](https://app.zerops.io/recipe/symfony)

<br/>

## Recipe features

- Symfony running on a load balanced **Zerops PHP + Nginx** service
- Zerops **PostgreSQL 16** service as database
- Zerops KeyDB (**Redis**) service for session storage
- Setup for Doctrine **database migrations**
- Logs set up to use **syslog** and accessible through Zerops GUI
- Utilization of Zerops built-in **environment variables** system
- [Mailpit](https://github.com/axllent/mailpit) as **SMTP mock server**
- [AdminerEvo](https://www.adminerevo.org) for **quick database management** tool

<br/>

## Production vs. development

Base of the recipe is ready for production, the difference comes down to:

- Use highly available version of the PostgreSQL database (change `mode` from `NON_HA` to `HA` in recipe YAML, `db` service section)
- Use at least two containers for Symfony service to achieve high reliability and resilience (add `minContainers: 2` in recipe YAML, `app` service section)
- Use production-ready third-party SMTP server instead of Mailpit (change `MAILER_DSN` env variable in `./zerops.yml` file)
- Disable public access to Adminer or remove it altogether (remove service `adminer` from recipe YAML)

<br/>

## Changes made over the default installation

If you want to modify your existing Symfony app to efficiently run on Zerops, these are the general steps we took:

- Add [zerops.yml](https://github.com/zeropsio/recipe-symfony/blob/main/zerops.yml) to your repository, our example includes idempotent migrations, caching, and optimized build process
- Add [marein/symfony-lock-doctrine-migrations-bundle](https://github.com/marein/symfony-lock-doctrine-migrations-bundle) to your composer.json to enable safe migrations in containerized deployments
- Setup `monolog.syslog_handler` to see logs in Zerops (see our [./config/packages/monolog.yaml](https://github.com/zeropsio/recipe-symfony/blob/main/config/packages/monolog.yaml#L63))
- Setup `session.handler_id` to store sessions inside Redis  (see our [./config/packages/framework.yaml](https://github.com/zeropsio/recipe-symfony/blob/main/config/packages/framework.yaml#L16), we specifically use DB with index `0`)
- We had to move `twbs/bootstrap` from `require-dev` to `require` in composer section for `composer install --no-dev` to work
- We also had to update `symfonycasts/sass-bundle` to `v0.5` or newer for sass compilation to work on alpine linux

<br/>
<br/>

Need help setting your project up? Join [Zerops Discord community](https://discord.com/invite/WDvCZ54).
