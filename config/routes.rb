Rails.application.routes.draw do |map|
  match 'selenium-core-runner', :to => redirect("/selenium-core-runner/list") 
  match 'selenium-core-runner/list'   => 'selenium_core_runner/suites#list', :as => :selenium_core_runner_suites
  match 'selenium-core-runner/prompt' => 'selenium_core_runner/suites#prompt', :as => :selenium_core_runner_prompt
  match 'selenium-core-runner/runner' => 'selenium_core_runner/suites#runner', :as => :selenium_core_runner
  match 'selenium-core-runner/:suite' => 'selenium_core_runner/suites#show', :as => 'selenium_core_runner_suite'
  match 'selenium-core-runner/:suite/:case' => 'selenium_core_runner/suites#show', :as => 'selenium_core_runner_suite'
end
