# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# Don't let testing shortcuts get into master by accident
fail("fdescribe left in tests") if `grep -r fdescribe specs/ `.length > 1
fail("fit left in tests") if `grep -r fit specs/ `.length > 1

# メッセージをプルリクのコメントに表示
message "Hello Danger!"

# ワーイングをプルリクのコメントに表示
warn "Danger Warning!!"

# プルリクをエラー表示でブロックする
fail "close PR"

# マークダウンも使える
markdown("# markdown")
markdown("## markdown")
markdown("### markdown")

# プルリクが編集中
warn("このプルリクが編集中のようです。") if github.pr_title.include? "[WIP]"

# プルリクがでかすぎる
warn("プルリクの変更箇所が多すぎるので分割しましょう。") if git.lines_of_code > 500

# マージコミットがある
has_merge_commit = git.commits.any? { |c| c.message =~ /^Merge branch '#{github.branch_for_base}'/ }
fail "マージコミットがあるのでリベースしましょう。" unless has_merge_commit

# マイルストーンが設定されていない
has_milestone = github.pr_json["milestone"] != nil
warn("プルリクにマイルストーンが設定されていないようです。", sticky: false) unless has_milestone

# 誰もアサインされていない
has_assignee = github.pr_json["assignee"] != nil
warn("誰もアサインされていないようです。", sticky: false) unless has_assignee
