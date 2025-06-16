module Git
  class Revision
    require 'open3'

    class << self
      def commit
        `git log -1 --pretty="format:%H"`
      end

      def commit_short
        `git log -1 --pretty="format:%h"`
      end

      def message
        `git log -1 --pretty="format:%s"`
      end

      def date
        `git log -1 --pretty="format:%ad"`
      end

      def timestamp
        `git log -1 --pretty="format:%at"`
      end

      def tag
        `git tag --points-at #{commit} | sort | head -n 1`.strip
      end

      def last_tag
        `git describe --tags --abbrev=0`.strip
      end

      def branch
        `git rev-parse --abbrev-ref HEAD`.strip
      end

      def author
        `git log -1 --pretty=format:"%an"`
      end

      def info
        @info ||= {
          :author             => author,
          :branch             => branch,
          :commit_hash        => commit,
          :commit_hash_short  => commit_short,
          :commit_subject     => message,
          :authored_date      => date,
          :authored_timestamp => timestamp,
          :commit_tag         => tag,
          :repo_last_tag      => last_tag
        }
      end
    end
  end
end
