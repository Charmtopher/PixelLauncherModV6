.class public final synthetic Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$hWIdn00sCsRznD3WJhILU0CGvPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final synthetic f$1:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$hWIdn00sCsRznD3WJhILU0CGvPQ;->f$0:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$hWIdn00sCsRznD3WJhILU0CGvPQ;->f$1:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$hWIdn00sCsRznD3WJhILU0CGvPQ;->f$0:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$hWIdn00sCsRznD3WJhILU0CGvPQ;->f$1:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/TaskSystemShortcut$Pin;->lambda$getOnClickListener$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method
