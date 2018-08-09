default['audit']['reporter'] = 'chef-server-automate'

case node['os']
when 'linux'
  default['audit']['profiles'] = [
    {
      'name': 'DevSec Linux Patch Baseline',
      'compliance': 'workstation-1/linux-patch-baseline'
    },
    {
      'name': 'spectre-meltdown_scan',
      'url': 'https://github.com/vibrato/inspec-meltdownspectre/archive/master.zip'
    }
  ]
when 'windows'
  default['audit']['profiles'] = [
    {
      'name': 'DevSec Windows Patch Baseline',
      'compliance': 'workstation-1/windows-patch-baseline'
    },
    {
      'name': 'spectre-meltdown_scan',
      'url': 'https://github.com/vibrato/inspec-meltdownspectre/archive/master.zip'
    }
  ]
end
