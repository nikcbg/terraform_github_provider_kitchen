control 'check_website' do

  describe http('https://github.com/nikcbg/terraform_github_provider_kitchen') do
    its('status') { should cmp 200 }
    its('body') { should match 'My awesome codebase' }
  end

end
