.class public final synthetic Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/graphics/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:F

.field private final synthetic f$2:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method public synthetic constructor <init>(FFLcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;->f$0:F

    iput p2, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;->f$1:F

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;->f$2:Lcom/android/launcher3/folder/FolderIcon;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;->f$0:F

    iget v1, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;->f$1:F

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;->f$2:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createDrawableOnUiThread$1(FFLcom/android/launcher3/folder/FolderIcon;Landroid/graphics/Canvas;)V

    return-void
.end method
