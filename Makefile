clean:
	@find . -type d -iname .turbo -exec rm -r {} +
	@rm -rf ./node_modules/.cache/turbo

turbo:
	@pnpm turbo run build
	@pnpm turbo run lint
	@pnpm turbo run prettier
