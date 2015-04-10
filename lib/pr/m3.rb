require "pr/m3/version"

module Pr
  module M3
    def self.update_all_with(main_branch)
      `git fetch`

      branches = {}
      pulls = []

      `git ls-remote origin | grep refs\/`.each_line do |a|
        ref = a.match(/[a-z0-9]{40}/)
        spec = a.match(/refs\/([^\/]+)\/([^\/]+)\/?([^\/]+)?\n/)

        if spec[1] == 'heads'
          branches[ref.to_s] = spec[2]
        elsif spec[1] == 'pull' && spec[3] == 'head'
          pulls << ref.to_s
        end
      end

      pulls.each do |commit|
        branch = branches[commit]
        `git checkout #{branch} && git merge origin/#{main_branch} && git push origin #{branch}`
      end

      `git checkout #{main_branch}`
    end
  end
end
