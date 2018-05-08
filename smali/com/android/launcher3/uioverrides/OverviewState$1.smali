.class Lcom/android/launcher3/uioverrides/OverviewState$1;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/OverviewState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/OverviewState;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/OverviewState$1;->this$0:Lcom/android/launcher3/uioverrides/OverviewState;

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final getPageAlpha(I)F
    .locals 0

    .line 85
    const/4 p1, 0x0

    return p1
.end method
