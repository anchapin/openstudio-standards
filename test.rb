require "json"
require "fileutils"
require "openstudio"
require "rubyXL"
require "/Users/achapin/179D/openstudio-standards/data/standards/manage_OpenStudio_Standards.rb"

spreadsheets_ashrae = [
    'OpenStudio_Standards-ashrae_90_1',
    'OpenStudio_Standards-ashrae_90_1(space_types)',
    'OpenStudio_Standards-ashrae_90_1_prm',
    'OpenStudio_Standards-ashrae_90_1_prm(space_types)'
  ]

  spreadsheets_deer = [
    'OpenStudio_Standards-deer',
    'OpenStudio_Standards-deer(space_types)'
  ]

  spreadsheets_comstock = [
    'OpenStudio_Standards-ashrae_90_1',
    'OpenStudio_Standards-ashrae_90_1-ALL-comstock(space_types)',
    'OpenStudio_Standards-deer',
    'OpenStudio_Standards-deer-ALL-comstock(space_types)'
  ]

  spreadsheets_cbes = [
    'OpenStudio_Standards-cbes',
    'OpenStudio_Standards-cbes(space_types)'
  ]

  spreadsheet_titles = spreadsheets_ashrae + spreadsheets_deer + spreadsheets_comstock + spreadsheets_cbes
  spreadsheet_titles = spreadsheet_titles.uniq
  spreadsheet_titles = ["OpenStudio_Standards-acm_schedule_seed"]

  export_spreadsheet_to_json(spreadsheet_titles)


puts "DONE"