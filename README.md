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
  :commit_hash => "60619c10baca6f9b4d03253697d43b7cf5d08edf",
  :commit_hash_short => "60619c1",
  :commit_subject => "release beta version",
  :authored_date => "Fri Jun 8 17:55:01 2012 +0500",
  :authored_timestamp => "1339160101",
  :commit_tag => "4.2.0.beta",
  :repo_last_tag => "4.2.0.beta"
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
