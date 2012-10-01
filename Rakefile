# -*- encoding: utf-8 -*-

project_name = 'AALaunchTransition'

appledoc_options = [
  '--output Documentation',
  '--project-name AALaunchTransition',
  '--project-company \'Ahmet AYGÜN\'',
  '--company-id com.ahmetaygun',
  "--project-version #{`cat VERSION`.strip}",
  '--keep-intermediate-files',
  '--keep-undocumented-objects',
  '--keep-undocumented-members',
  '--docsetutil-path /Applications/Xcode.app/Contents/Developer/usr/bin/docsetutil',
  '--publish-docset',
  '--docset-atom-filename AALaunchTransition.atom',
  '--docset-feed-url http://ahmet.github.com/AALaunchTransition/%DOCSETATOMFILENAME',
  '--docset-package-url  http://ahmet.github.com/AALaunchTransition/%DOCSETPACKAGEFILENAME',
  '--docset-fallback-url http://ahmet.github.com/AALaunchTransition/',
  '--exit-threshold 2',
  '--ignore .m',
  '--verbose xcode']

namespace :docs do
  desc 'Clean docs'
  task :clean do
    `rm -rf Documentation`
  end
  
  desc 'Generate docs'
  task :generate => [:'docs:clean'] do
    `/usr/local/bin/appledoc #{appledoc_options.join(' ')} #{project_name}`
  end
end
