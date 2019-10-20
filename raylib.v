module vraylib
#flag linux -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
#include "raylib.h"

struct C.Vector2 {
pub mut:
	x f32
	y f32
}

struct C.Vector3 {
pub mut:
	x f32
	y f32
	z f32

}

struct C.Vector4 {
pub mut:
	x f32
	y f32
	z f32
	w f32
}

type Quaternion C.Vector4

struct C.Matrix {
pub mut:
	m0 f32
	m1 f32
	m2 f32
	m3 f32
	m4 f32
	m5 f32
	m6 f32
	m7 f32
	m8 f32
	m9 f32
	m10 f32
	m11 f32
	m12 f32
	m13 f32
	m14 f32
	m15 f32
}


struct C.Image {
pub mut:
	data voidptr
	width int
	height int
	mipmaps int
	format int
}

struct C.Rectangle {
pub mut:
	x f32
	y f32
	width f32
	height f32

}

struct C.Texture2D {
pub mut:
	id u32
	width int
	height int
	mipmaps int
	format int
}
type Texture Texture2D

struct C.Color {
pub mut:
	r byte
	g byte
	b byte
	a byte
}

struct C.CharInfo {
pub mut:
	value int
	offsetX int
	offsetY int
	advanceX int
	image Image
}

struct C.Font {
pub mut:
	baseSize int
	charsCount int
	texture Texture2D
	recs &Rectangle
	chars &CharInfo
}

// Color Constants
const (
	lightgray  = Color{ r: 200, g: 200, b: 200, a: 255 }
    gray       = Color{ r: 130, g: 130, b: 130, a: 255 }
    darkgray   = Color{ r: 80,  g: 80,  b: 80,  a: 255 }
    yellow     = Color{ r: 253, g: 249, b: 0,   a: 255 }
    gold       = Color{ r: 255, g: 203, b: 0,   a: 255 }
    orange     = Color{ r: 255, g: 161, b: 0,   a: 255 }
    pink       = Color{ r: 255, g: 109, b: 194, a: 255 }
    red        = Color{ r: 230, g: 41,  b: 55,  a: 255 }
    maroon     = Color{ r: 190, g: 33,  b: 55,  a: 255 }
    green      = Color{ r: 0,   g: 228, b: 48,  a: 255 }
    lime       = Color{ r: 0,   g: 158, b: 47,  a: 255 }
    darkgreen  = Color{ r: 0,   g: 117, b: 44,  a: 255 }
    skyblue    = Color{ r: 102, g: 191, b: 255, a: 255 }
    blue       = Color{ r: 0,   g: 121, b: 241, a: 255 }
    darkblue   = Color{ r: 0,   g: 82,  b: 172, a: 255 }
    purple     = Color{ r: 200, g: 122, b: 255, a: 255 }
    violet     = Color{ r: 135, g: 60,  b: 190, a: 255 }
    darkpurple = Color{ r: 112, g: 31,  b: 126, a: 255 }
    beige      = Color{ r: 211, g: 176, b: 131, a: 255 }
    brown      = Color{ r: 127, g: 106, b: 79,  a: 255 }
    darkbrown  = Color{ r: 76,  g: 63,  b: 47,  a: 255 }

    white      = Color{ r: 255, g: 255, b: 255, a: 255 }
    black      = Color{ r: 0,   g: 0,   b: 0,   a: 255 }
    blank      = Color{ r: 0,   g: 0,   b: 0,   a: 0   }
    magenta    = Color{ r: 255, g: 0,   b: 255, a: 255 }
    raywhite   = Color{ r: 245, g: 245, b: 245, a: 255 }
)

// Key Constants
const(
    key_apostrophe      = 39
    key_comma           = 44
    key_minus           = 45
    key_period          = 46
    key_slash           = 47
    key_zero            = 48
    key_one             = 49
    key_two             = 50
    key_three           = 51
    key_four            = 52
    key_five            = 53
    key_six             = 54
    key_seven           = 55
    key_eight           = 56
    key_nine            = 57
    key_semicolon       = 59
    key_equal           = 61
    key_a               = 65
    key_b               = 66
    key_c               = 67
    key_d               = 68
    key_e               = 69
    key_f               = 70
    key_g               = 71
    key_h               = 72
    key_i               = 73
    key_j               = 74
    key_k               = 75
    key_l               = 76
    key_m               = 77
    key_n               = 78
    key_o               = 79
    key_p               = 80
    key_q               = 81
    key_r               = 82
    key_s               = 83
    key_t               = 84
    key_u               = 85
    key_v               = 86
    key_w               = 87
    key_x               = 88
    key_y               = 89
    key_z               = 90

    // Function keys
    key_space           = 32
    key_escape          = 256
    key_enter           = 257
    key_tab             = 258
    key_backspace       = 259
    key_insert          = 260
    key_delete          = 261
    key_right           = 262
    key_left            = 263
    key_down            = 264
    key_up              = 265
    key_page_up         = 266
    key_page_down       = 267
    key_home            = 268
    key_end             = 269
    key_caps_lock       = 280
    key_scroll_lock     = 281
    key_num_lock        = 282
    key_print_screen    = 283
    key_pause           = 284
    key_f1              = 290
    key_f2              = 291
    key_f3              = 292
    key_f4              = 293
    key_f5              = 294
    key_f6              = 295
    key_f7              = 296
    key_f8              = 297
    key_f9              = 298
    key_f10             = 299
    key_f11             = 300
    key_f12             = 301
    key_left_shift      = 340
    key_left_control    = 341
    key_left_alt        = 342
    key_left_super      = 343
    key_right_shift     = 344
    key_right_control   = 345
    key_right_alt       = 346
    key_right_super     = 347
    key_kb_menu         = 348
    key_left_bracket    = 91
    key_backslash       = 92
    key_right_bracket   = 93
    key_grave           = 96

    // Keypad keys
    key_kp_0            = 320
    key_kp_1            = 321
    key_kp_2            = 322
    key_kp_3            = 323
    key_kp_4            = 324
    key_kp_5            = 325
    key_kp_6            = 326
    key_kp_7            = 327
    key_kp_8            = 328
    key_kp_9            = 329
    key_kp_decimal      = 330
    key_kp_divide       = 331
    key_kp_multiply     = 332
    key_kp_subtract     = 333
    key_kp_add          = 334
    key_kp_enter        = 335
    key_kp_equal        = 336
)


pub fn set_target_fps(fps int) {
	C.SetTargetFPS(fps)
}

pub fn init_window(w, h int, title string) {
	C.InitWindow(w, h, title.str)
}

pub fn close_window() {
	C.CloseWindow()
}

pub fn window_should_close() bool {
	return C.WindowShouldClose()
}

pub fn begin_drawing() {
	C.BeginDrawing()
}

pub fn end_drawing() {
	C.EndDrawing()
}

pub fn clear_background(c Color) {
	C.ClearBackground(c)
}

pub fn draw_fps(posX, posY int) {
	C.DrawFPS(posX, posY)
}

// Input-related functions: key
pub fn is_key_down(key int) bool {
	return C.IsKeyDown(key)
}

pub fn is_key_pressed(key int)  bool {
	return C.IsKeyPressed(key)
}

pub fn is_key_released(key int) bool {
	return C.IsKeyReleased(key)
}

pub fn is_key_up(key int) bool {
	return C.IsKeyUp(key)
}

pub fn set_exit_key(key int) {
	C.SetExitKey(key)
}

pub fn get_key_pressed() int {
	return C.GetKeyPressed()
}

// Text Drawing Function
pub fn draw_text(text string, posX, posY, fontSize int, color Color) {
	C.DrawText(text.str, posX, posY, fontSize, color)
}

pub fn (f Font) draw_text_ex(text string, position Vector2, fontSize, spacing f32, tint Color) {
	C.DrawTextEx(f, text.str, position, fontSize, spacing, tint)
}

pub fn (f Font) draw_text_rec(
	text string,
	rec Rectangle,
	fontSize, spacing f32,
	wordWrap bool,
	tint Color) {
	C.DrawTextRec(f, text.str, rec, fontSize, spacing, wordWrap, tint)
}
pub fn (f Font) draw_text_rec_ex(
	text string,
	rec Rectangle
	fontSize, spacing f32
	wordWrap bool,
	tint Color,
	selectStart, selectLength int,
	selectText, selectBack Color) {
	C.DrawTextRecEx(f, text.str, rec, fontSize, spacing, wordWrap, tint, selectStart, selectLength, selectText, selectBack)

}
