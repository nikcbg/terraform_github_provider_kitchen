control 'check_website' do

  describe http('https://github.com/nikorganization/test_repository') do
    its('status') { should cmp 200 }
    its('body') { should match 'test_repository' }
  end

end
