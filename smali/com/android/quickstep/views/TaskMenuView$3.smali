.class Lcom/android/quickstep/views/TaskMenuView$3;
.super Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskMenuView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskMenuView;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$3;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .line 228
    const/4 v0, 0x1

    return v0
.end method
