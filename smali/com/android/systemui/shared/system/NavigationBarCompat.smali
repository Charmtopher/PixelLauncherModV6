.class public Lcom/android/systemui/shared/system/NavigationBarCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_DISABLE_QUICK_SCRUB:I = 0x2

.field public static final FLAG_DISABLE_SWIPE_UP:I = 0x1

.field public static final FLAG_HIDE_BACK_BUTTON:I = 0x8

.field public static final FLAG_SHOW_OVERVIEW_BUTTON:I = 0x4

.field public static final HIT_TARGET_BACK:I = 0x1

.field public static final HIT_TARGET_HOME:I = 0x2

.field public static final HIT_TARGET_NONE:I = 0x0

.field public static final HIT_TARGET_OVERVIEW:I = 0x3

.field public static final QUICK_SCRUB_DRAG_SLOP_PX:I

.field public static final QUICK_SCRUB_TOUCH_SLOP_PX:I

.field public static final QUICK_STEP_DRAG_SLOP_PX:I

.field public static final QUICK_STEP_TOUCH_SLOP_PX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/NavigationBarCompat;->convertDpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/systemui/shared/system/NavigationBarCompat;->QUICK_STEP_DRAG_SLOP_PX:I

    .line 37
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/NavigationBarCompat;->convertDpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/systemui/shared/system/NavigationBarCompat;->QUICK_SCRUB_DRAG_SLOP_PX:I

    .line 38
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/NavigationBarCompat;->convertDpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/systemui/shared/system/NavigationBarCompat;->QUICK_STEP_TOUCH_SLOP_PX:I

    .line 39
    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/NavigationBarCompat;->convertDpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/systemui/shared/system/NavigationBarCompat;->QUICK_SCRUB_TOUCH_SLOP_PX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDpToPixel(F)I
    .locals 1

    .line 79
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
