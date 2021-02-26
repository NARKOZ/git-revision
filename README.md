# Git Revision

Git Revision is a simple (45 SLoC) Ruby gem that provides basic information about git source code.
You can use it in your apps, [for example](http://stackoverflow.com/q/8500644/159721), to show deployed version.

## Installation

Add to Gemfile:

```ruby
gem 'git-revision'
```

and run:

```sh
bundle install
```

## Usage

`Git::Revision.info` will return the following hash:

```ruby
{
  :author=>"Nihad Abbasov",
  :branch=>"master",
  :commit_hash=>"fb2832072762bb84f7f76ba50a620b881066ac0c",
  :commit_hash_short=>"fb28320",
  :commit_subject=>"Release v0.0.3",
  :authored_date=>"Thu Dec 19 13:18:20 2019 +0400",
  :authored_timestamp=>"1576747100",
  :commit_tag=>"",
  :repo_last_tag=>"v0.0.2"
}
```

Additionally you can access these methods directly:

```ruby
Git::Revision.author       # returns last commit author
Git::Revision.branch       # returns branch
Git::Revision.commit       # returns last commit hash
Git::Revision.commit_short # returns abbreviated last commit hash (7 characters)
Git::Revision.message      # returns last commit message subject
Git::Revision.date         # returns authored date of last commit
Git::Revision.timestamp    # returns authored date of last commit in Unix time
Git::Revision.tag          # returns last commit tag if exists
Git::Revision.last_tag     # returns last tag in repository if exists
```

## License

Released under the BSD 2-clause license. See LICENSE.txt for details.
