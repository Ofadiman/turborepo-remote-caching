clean:
	@find ./apps -type d -iname .turbo -exec rm -r {} +
	@find ./packages -type d -iname .turbo -exec rm -r {} +
	@rm -rf ./node_modules/.cache/turbo

build:
	@pnpm turbo run build --filter ui --token=9de43da7-9958-4d8d-8c91-2b544681eff9

prettier:
	@pnpm turbo run prettier --token=9de43da7-9958-4d8d-8c91-2b544681eff9

lint:
	@pnpm turbo run lint --token=9de43da7-9958-4d8d-8c91-2b544681eff9

all: build lint prettier
