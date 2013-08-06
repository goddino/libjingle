all: \
    $(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_encoder.c

$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_encoder.c \
    : \
    source/libvpx/examples/simple_encoder.txt \
    $(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_encoder/gen_example_code.sh
	@mkdir -p "$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx"
	@echo note: "Generate libvpx example code source/libvpx/examples/simple_encoder.txt."
	bash -c "$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_encoder/gen_example_code.sh source/libvpx/examples/simple_encoder.txt > $(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/simple_encoder.c"
