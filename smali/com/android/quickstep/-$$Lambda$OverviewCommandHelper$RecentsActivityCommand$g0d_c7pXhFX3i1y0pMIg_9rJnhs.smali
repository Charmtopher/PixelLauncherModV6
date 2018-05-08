.class public final synthetic Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$g0d_c7pXhFX3i1y0pMIg_9rJnhs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$g0d_c7pXhFX3i1y0pMIg_9rJnhs;->f$0:Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$g0d_c7pXhFX3i1y0pMIg_9rJnhs;->f$0:Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->lambda$g0d_c7pXhFX3i1y0pMIg_9rJnhs(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;Lcom/android/launcher3/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
