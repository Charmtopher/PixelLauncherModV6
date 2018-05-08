.class Lcom/android/launcher3/folder/FolderAnimationManager$1;
.super Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .line 196
    const/4 v0, 0x1

    return v0
.end method
