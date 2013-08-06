all: \
    $(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_decoder.c

$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_decoder.c \
    : \
    source/libvpx/examples/simple_decoder.txt \
    $(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_decoder/gen_example_code.sh
	@mkdir -p "$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx"
	@echo note: "Generate libvpx example code source/libvpx/examples/simple_decoder.txt."
	bash -c "$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_decoder/gen_example_code.sh source/libvpx/examples/simple_decoder.txt > $(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_decoder.c"
