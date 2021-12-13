# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
# If you are not using ActiveRecord, you can remove these lines.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # You can uncomment this line to turn off ActiveRecord support entirely.
  # config.use_active_record = false

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, type: :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
end

def merchant_data_for_test
  {
    "data": [
        {
            "id": "1",
            "type": "merchant",
            "attributes": {
                "name": "Schroeder-Jerde"
            }
        },
        {
            "id": "2",
            "type": "merchant",
            "attributes": {
                "name": "Klein, Rempel and Jones"
            }
        },
        {
            "id": "3",
            "type": "merchant",
            "attributes": {
                "name": "Willms and Sons"
            }
        },
        {
            "id": "4",
            "type": "merchant",
            "attributes": {
                "name": "Cummings-Thiel"
            }
        },
        {
            "id": "5",
            "type": "merchant",
            "attributes": {
                "name": "Williamson Group"
            }
        },
        {
            "id": "6",
            "type": "merchant",
            "attributes": {
                "name": "Williamson Group"
            }
        },
        {
            "id": "7",
            "type": "merchant",
            "attributes": {
                "name": "Bernhard-Johns"
            }
        },
        {
            "id": "8",
            "type": "merchant",
            "attributes": {
                "name": "Osinski, Pollich and Koelpin"
            }
        },
        {
            "id": "9",
            "type": "merchant",
            "attributes": {
                "name": "Hand-Spencer"
            }
        },
        {
            "id": "10",
            "type": "merchant",
            "attributes": {
                "name": "Bechtelar, Jones and Stokes"
            }
        }
      ]
    }
end

def item_data_for_test
  {
    "data": [
        {
            "id": "4",
            "type": "item",
            "attributes": {
                "name": "Item Nemo Facere",
                "description": "Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
                "unit_price": 42.91,
                "merchant_id": 1
            }
        },
        {
            "id": "5",
            "type": "item",
            "attributes": {
                "name": "Item Expedita Aliquam",
                "description": "Voluptate aut labore qui illum tempore eius. Corrupti cum et rerum. Enim illum labore voluptatem dicta consequatur. Consequatur sunt consequuntur ut officiis.",
                "unit_price": 687.23,
                "merchant_id": 1
            }
        },
        {
            "id": "6",
            "type": "item",
            "attributes": {
                "name": "Item Provident At",
                "description": "Numquam officiis reprehenderit eum ratione neque tenetur. Officia aut repudiandae eum at ipsum doloribus. Iure minus itaque similique. Ratione dicta alias asperiores minima ducimus nesciunt at.",
                "unit_price": 159.25,
                "merchant_id": 1
            }
        },
        {
            "id": "7",
            "type": "item",
            "attributes": {
                "name": "Item Expedita Fuga",
                "description": "Fuga assumenda occaecati hic dolorem tenetur dolores nisi. Est tenetur adipisci voluptatem vel. Culpa adipisci consequatur illo. Necessitatibus quis quo velit sed repellendus ut amet.",
                "unit_price": 311.63,
                "merchant_id": 1
            }
        },
        {
            "id": "8",
            "type": "item",
            "attributes": {
                "name": "Item Est Consequuntur",
                "description": "Reprehenderit est officiis cupiditate quia eos. Voluptatem illum reprehenderit quo vel eligendi. Et eum omnis id ut aliquid veniam.",
                "unit_price": 343.55,
                "merchant_id": 1
            }
        },
        {
            "id": "9",
            "type": "item",
            "attributes": {
                "name": "Item Quo Magnam",
                "description": "Culpa deleniti adipisci voluptates aut. Sed eum quisquam nisi. Voluptatem est rerum est qui id reprehenderit. Molestiae laudantium non velit alias. Ipsa consequatur modi quibusdam.",
                "unit_price": 225.82,
                "merchant_id": 1
            }
        },
        {
            "id": "10",
            "type": "item",
            "attributes": {
                "name": "Item Quidem Suscipit",
                "description": "Reiciendis sed aperiam culpa animi laudantium. Eligendi veritatis sint dolorem asperiores. Earum alias illum eos non rerum.",
                "unit_price": 340.18,
                "merchant_id": 1
            }
        },
        {
            "id": "11",
            "type": "item",
            "attributes": {
                "name": "Item Rerum Magni",
                "description": "Iusto ratione illum. Adipisci est perspiciatis temporibus. Ducimus id dolorem voluptas eligendi repellat iure sit.",
                "unit_price": 130.46,
                "merchant_id": 1
            }
        },
        {
            "id": "12",
            "type": "item",
            "attributes": {
                "name": "Item Et Cumque",
                "description": "Ducimus id perferendis. Libero ullam odit aut quisquam non. Rem eaque distinctio quos. Eaque nihil odit.",
                "unit_price": 395.15,
                "merchant_id": 1
            }
        },
        {
            "id": "13",
            "type": "item",
            "attributes": {
                "name": "Item Voluptatem Sint",
                "description": "Nostrum doloribus quia. Expedita vitae beatae cumque. Aut ut illo aut eum.",
                "unit_price": 594.54,
                "merchant_id": 1
            }
        },
        {
            "id": "14",
            "type": "item",
            "attributes": {
                "name": "Item Itaque Consequatur",
                "description": "Voluptatibus omnis quo recusandae distinctio voluptatem quibusdam et. Voluptas odio accusamus delectus sunt quia. Non atque rerum vitae officia odit. Magnam iste occaecati in nihil autem saepe.",
                "unit_price": 398.91,
                "merchant_id": 1
            }
        }
      ]

    }

end
