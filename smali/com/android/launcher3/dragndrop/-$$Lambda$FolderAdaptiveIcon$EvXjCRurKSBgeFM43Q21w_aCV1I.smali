.class public final synthetic Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/Launcher;

.field private final synthetic f$1:J

.field private final synthetic f$2:Landroid/graphics/Bitmap;

.field private final synthetic f$3:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;JLandroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$0:Lcom/android/launcher3/Launcher;

    iput-wide p2, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$1:J

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$2:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$3:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$0:Lcom/android/launcher3/Launcher;

    iget-wide v1, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$1:J

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$2:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;->f$3:Landroid/graphics/Point;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->lambda$createFolderAdaptiveIcon$0(Lcom/android/launcher3/Launcher;JLandroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    move-result-object v0

    return-object v0
.end method
