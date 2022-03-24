# work-it

```
git checkout e4e83af


```
can't get migrations to run. old code. trying to get it to Rails 6 so Spring will be happy. Hm. Lots of fighting with dependencies. Ruby versions. 

Now:

> ActiveRecord::NoDatabaseError
> connection to server on socket "/tmp/.s.PGSQL.5432" failed: FATAL: database "project_development" does not exist 

bundle passes, but `rails db:migrate` does

> > rails db:migrate
> Warning: the running version of Bundler (2.1.4) is older than the version that created the lockfile (2.2.17). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.2.17`.
> /Users/joshthompson/.rvm/gems/ruby-2.7.3/gems/spring-4.0.0/lib/spring/application.rb:96:in `preload': Spring only supports Rails >= 6.0.0 (RuntimeError)
> 	from /Users/joshthompson/.rvm/gems/ruby-2.7.3/gems/spring-4.0.0/lib/spring/application.rb:162:in `serve'
>         from /Users/joshthompson/.rvm/gems/ruby-2.7.3/gems/spring-4.0.0/lib/spring/application.rb:144:in `block in run'
> 	from /Users/joshthompson/.rvm/gems/ruby-2.7.3/gems/spring-4.0.0/lib/spring/application.rb:138:in `loop'
> 	from /Users/joshthompson/.rvm/gems/ruby-2.7.3/gems/spring-4.0.0/lib/spring/application.rb:138:in `run'
> 	from /Users/joshthompson/.rvm/gems/ruby-2.7.3/gems/spring-4.0.0/lib/spring/application/boot.rb:19:in `<top (required)>'
> 	from /Users/joshthompson/.rvm/rubies/ruby-2.7.3/lib/ruby/2.7.0/rubygems/core_ext/kernel_require.rb:83:in `require'
> 	from /Users/joshthompson/.rvm/rubies/ruby-2.7.3/lib/ruby/2.7.0/rubygems/core_ext/kernel_require.rb:83:in `require'
> 	from -e:1:in `<main>'

and I cannot get to `rails 6`. No dice, going to try to continue back in [my rails 7 attempt at something similar](https://github.com/josh-works/power-broker-quotes/tree/main)