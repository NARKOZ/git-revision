module Git
  class Revision
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
        `git describe --exact-match #{commit}`.strip
      end

      def last_tag
        `git describe --tags --abbrev=0`.strip
      end

      def branch
        `git ls-remote --heads origin | grep $(git rev-parse HEAD) | cut -d / -f 3`.strip
      end

      def info
        @info ||= {
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
