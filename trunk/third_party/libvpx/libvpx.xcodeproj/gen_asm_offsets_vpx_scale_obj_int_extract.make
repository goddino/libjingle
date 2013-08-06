all: \
    $(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/vpx_scale_asm_offsets.asm

$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/vpx_scale_asm_offsets.asm \
    : \
    $(INTERMEDIATE_DIR)/vpx_scale_asm_offsets.o \
    $(BUILT_PRODUCTS_DIR)/libvpx_obj_int_extract \
    obj_int_extract.sh
	@mkdir -p "$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx"
	@echo note: "Generate assembly offsets $(INTERMEDIATE_DIR)/vpx_scale_asm_offsets.o."
	../../third_party/libvpx/obj_int_extract.sh -e "$(BUILT_PRODUCTS_DIR)/libvpx_obj_int_extract" -f rvds -b "$(INTERMEDIATE_DIR)/vpx_scale_asm_offsets.o" -o "$(SHARED_INTERMEDIATE_DIR)/third_party/libvpx/vpx_scale_asm_offsets.asm"
