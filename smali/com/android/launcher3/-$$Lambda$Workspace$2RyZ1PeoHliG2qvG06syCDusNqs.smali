.class public final synthetic Lcom/android/launcher3/-$$Lambda$Workspace$2RyZ1PeoHliG2qvG06syCDusNqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$Workspace$2RyZ1PeoHliG2qvG06syCDusNqs;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/-$$Lambda$Workspace$2RyZ1PeoHliG2qvG06syCDusNqs;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$Workspace$2RyZ1PeoHliG2qvG06syCDusNqs;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/launcher3/-$$Lambda$Workspace$2RyZ1PeoHliG2qvG06syCDusNqs;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->lambda$runOnOverlayHidden$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
