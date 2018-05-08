.class Lcom/android/launcher3/LauncherState$1;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final getPageAlpha(I)F
    .locals 0

    .line 71
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
