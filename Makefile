PROJECT = YOUR_PROJECT
TARGET = $(PROJECT)
IOS_VERSION = 8.1
DEVICE = iPhone 6
ORGANIZATION = AquaSupport
DOMAIN = org.openaquamarine
GITHUB = https://github.com/$(ORGANIZATION)/$(PROJECT)

test:
	xcodebuild \
	-workspace $(PROJECT).xcworkspace \
	-scheme $(TARGET) \
	-destination 'platform=iOS Simulator,name=$(DEVICE),OS=$(IOS_VERSION)' \
	GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
	GCC_GENERATE_TEST_COVERAGE_FILES=YES \
	test | xcpretty -c && exit ${PIPESTATUS[0]}
coveralls:
	coveralls -r ./ -e Pods -e $(PROJECT)Tests
doc:
	appledoc \
	--prefix-merged-sections \
	--template "~/RubymineProjects/SwiftyDoc" \
	--ignore ".m" \
 	--ignore "Pods" \
 	--keep-undocumented-objects \
 	--keep-undocumented-members \
 	--create-html \
 	--no-create-docset \
 	--index-desc "README.md" \
 	--company-id "$(DOMAIN)" \
 	--project-name="$(PROJECT)" \
 	--project-company "$(ORGANIZATION)" \
 	--output "~/dropbox/Public/___doc___$(PROJECT)" \
 	$(PROJECT)/Classes | exit 0

setup:
	curl https://gist.githubusercontent.com/kaiinui/25662e9e32dffbb0ebcb/raw/4f10811aa798dcd95d3d96dbd50fac68b3c018e8/gitignore > .gitignore
	curl https://gist.githubusercontent.com/kaiinui/25662e9e32dffbb0ebcb/raw/6c0fc845772ac271cafeb0755bd2eaaf599ee335/template.podspec | sed "s/#{PROJECT}/$(PROJECT)/g" | sed "s@#{GITHUB}@$(GITHUB)@g" > $(PROJECT).podspec
	curl https://gist.githubusercontent.com/kaiinui/25662e9e32dffbb0ebcb/raw/85d9eacaf2a725454b5ea5b4834bd4a5aa1695a4/travis.yml > .travis.yml
	curl https://gist.githubusercontent.com/kaiinui/25662e9e32dffbb0ebcb/raw/fb744d94ef7d9a397ae07785d4d8c969504ddf3b/Podfile | sed "s/#{PROJECT}/HOGE/g" > Podfile
