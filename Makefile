
build:
	@echo "Running flutter pub run build_runner build..."
	flutter pub run build_runner build --delete-conflicting-outputs

build_watch:
	@echo "Running flutter pub run build_runner build..."
	flutter pub run build_runner watch --delete-conflicting-outputs

# Clean build_runner outputs
clean:
	@echo "Cleaning build_runner outputs..."
	flutter pub run build_runner clean

# Flutter clean command
flutter_clean:
	@echo "Running flutter clean..."
	flutter clean

.PHONY: all build clean flutter_clean
