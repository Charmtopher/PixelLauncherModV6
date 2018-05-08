.class public final synthetic Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;->f$1:F

    iput p3, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;->f$1:F

    iget v2, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->lambda$getLauncherContentAnimator$0(Landroid/view/View;FF)V

    return-void
.end method
