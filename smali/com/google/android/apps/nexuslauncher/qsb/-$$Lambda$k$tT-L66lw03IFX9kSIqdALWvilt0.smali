.class public final synthetic Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$tT-L66lw03IFX9kSIqdALWvilt0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/google/android/apps/nexuslauncher/qsb/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$tT-L66lw03IFX9kSIqdALWvilt0;->f$0:Lcom/google/android/apps/nexuslauncher/qsb/k;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$tT-L66lw03IFX9kSIqdALWvilt0;->f$0:Lcom/google/android/apps/nexuslauncher/qsb/k;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->lambda$tT-L66lw03IFX9kSIqdALWvilt0(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z

    move-result p1

    return p1
.end method
