.class public final synthetic Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$TqL14dHB8-DA72YSvoxUe8KCiy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/LauncherAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$TqL14dHB8-DA72YSvoxUe8KCiy0;->f$0:Lcom/android/launcher3/LauncherAnimationRunner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$TqL14dHB8-DA72YSvoxUe8KCiy0;->f$0:Lcom/android/launcher3/LauncherAnimationRunner;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationCancelled$1(Lcom/android/launcher3/LauncherAnimationRunner;)V

    return-void
.end method
