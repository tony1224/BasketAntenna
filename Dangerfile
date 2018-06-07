# プルリクがでかすぎる
warn("プルリクの変更箇所が多すぎるので分割しましょう。") if git.lines_of_code > 500

# マイルストーンが設定されていない
has_milestone = github.pr_json["milestone"] != nil
warn("プルリクにマイルストーンが設定されていないようです。", sticky: false) unless has_milestone

# 誰もアサインされていない
has_assignee = github.pr_json["assignee"] != nil
warn("誰もアサインされていないようです。", sticky: false) unless has_assignee

# 何も変更がない
fail "変更がまったく無いようです。" if git.modified_files.empty? &amp;&amp; git.added_files.empty? &amp&amp; git.deleted_files.empty?

# run swiftlint
# swiftlint.config_file = '.swiftlint.yml'
# swiftlint.lint_files inline_mode: true
